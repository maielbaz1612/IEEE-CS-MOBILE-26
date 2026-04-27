import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../task.dart';
import 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  late Database database;

  TaskCubit() : super(TaskInitial()) {
    initDatabase();
  }

  Future<void> initDatabase() async {
    emit(TaskLoading());
    try {
      var databasesPath = await getDatabasesPath();
      String path = join(databasesPath, 'tasks_database.db');

      print('Database path: $path'); // DEBUG

      database = await openDatabase(
        path,
        version: 1,
        onCreate: (db, version) async {
          print('Creating database...'); // DEBUG
          await db.execute(
              'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, status TEXT)'
          );
        },
      );
      print('Database opened successfully'); // DEBUG
      await loadTasks();
    } catch (e) {
      print('Database init error: $e'); // DEBUG
      emit(TaskError('Database init failed: $e'));
    }
  }
  Future<void> loadTasks() async {
    if (isClosed) return;

    try {
      final List<Map<String, dynamic>> maps = await database.query('tasks');
      print('Loaded ${maps.length} tasks'); // DEBUG
      final tasks = maps.map((map) => Task.fromMap(map)).toList();
      if (!isClosed) {
        emit(TaskLoaded(tasks));
      }
    } catch (e) {
      print('Load tasks error: $e'); // DEBUG
      if (!isClosed) {
        emit(TaskError('Failed to load tasks: $e'));
      }
    }
  }

  Future<void> addTask(String title) async {
    print('Adding task: $title'); // DEBUG

    if (title.trim().isEmpty) {
      print('Task title is empty'); // DEBUG
      return;
    }

    final currentState = state;
    if (currentState is TaskLoading) {
      print('Already loading'); // DEBUG
      return;
    }

    try {
      print('Inserting into database...'); // DEBUG
      await database.insert('tasks', {
        'title': title,
        'status': 'new',
      });
      print('Insert successful'); // DEBUG
      await loadTasks();
    } catch (e) {
      print('Add task error: $e'); // DEBUG
      if (!isClosed) {
        emit(TaskError('Failed to add task: $e'));
      }
    }
  }

  Future<void> updateTaskStatus(int id, String newStatus) async {
    try {
      await database.update(
        'tasks',
        {'status': newStatus},
        where: 'id = ?',
        whereArgs: [id],
      );
      await loadTasks();
    } catch (e) {
      if (!isClosed) {
        emit(TaskError('Failed to update task: $e'));
      }
    }
  }

  Future<void> deleteTask(int id) async {
    try {
      await database.delete(
        'tasks',
        where: 'id = ?',
        whereArgs: [id],
      );
      await loadTasks();
    } catch (e) {
      if (!isClosed) {
        emit(TaskError('Failed to delete task: $e'));
      }
    }
  }

  @override
  Future<void> close() {
    database.close();
    return super.close();
  }
}