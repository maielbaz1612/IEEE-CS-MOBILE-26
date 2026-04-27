import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/task.dart';
import 'package:to_do/task_list.dart';
import 'cubit/task_cubit.dart';

class Tasks extends StatelessWidget {
  final List<Task> taskss;

  const Tasks({super.key, required this.taskss});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: taskss.length,
      itemBuilder: (context, index) {
        final task = taskss[index];
        return task_list(
          isChecked: task.status == 'done',
          taskTitle: task.title,
          checkBoxChange: (newValue) {
            String newStatus = (newValue == true) ? 'done' : 'new';
            context.read<TaskCubit>().updateTaskStatus(task.id!, newStatus);
          },
          deleteTask: () {
            context.read<TaskCubit>().deleteTask(task.id!);
          },
        );
      },
    );
  }
}