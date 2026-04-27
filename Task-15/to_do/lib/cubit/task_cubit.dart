import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../task.dart';
import 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  late Database _database;

  TaskCubit() : super(TaskInitial()) {
    _initDatabase();
  }

  Future<void> _initDatabase() async {
    emit(TaskLoading());
    try {
      final String path = join(await getDatabasesPath(), 'tasks_database.db');

      _database = await openDatabase(
        path,
        version: 1,
        onCreate: (db, version) => db.execute(
            'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, status TEXT)'
        ),
      );
      await loadTasks();
    } catch (e) {
      _safeEmit(TaskError('Database Error: $e'));
    }
  }

  Future<void> loadTasks() async {
    try {
      final List<Map<String, dynamic>> maps = await _database.query('tasks');
      final tasks = maps.map((map) => Task.fromMap(map)).toList();
      _safeEmit(TaskLoaded(tasks));
    } catch (e) {
      _safeEmit(TaskError('Load Error: $e'));
    }
  }

  Future<void> addTask(String title) async {
    if (title.trim().isEmpty) return;

    try {
      await _database.insert('tasks', {'title': title, 'status': 'new'});
      await loadTasks();
    } catch (e) {
      _safeEmit(TaskError('Add Error: $e'));
    }
  }

  Future<void> updateTaskStatus(int id, String newStatus) async {
    await _executeDbAction(
          () => _database.update('tasks', {'status': newStatus}, where: 'id = ?', whereArgs: [id]),
    );
  }

  Future<void> deleteTask(int id) async {
    await _executeDbAction(
          () => _database.delete('tasks', where: 'id = ?', whereArgs: [id]),
    );
  }

  Future<void> _executeDbAction(Future<void> Function() action) async {
    try {
      await action();
      await loadTasks();
    } catch (e) {
      _safeEmit(TaskError('Operation Failed: $e'));
    }
  }

  void _safeEmit(TaskState state) {
    if (!isClosed) emit(state);
  }

  @override
  Future<void> close() async {
    await _database.close();
    return super.close();
  }
}