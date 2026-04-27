import 'package:flutter/material.dart';
import 'package:to_do/task_list.dart';

class Tasks extends StatelessWidget {
  final List<Map> taskss;
  final Function onUpdate;
  final Function onDelete;

  Tasks({required this.taskss, required this.onUpdate, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: taskss.length,
        itemBuilder: (context, index) {
          return task_list(
            isChecked: taskss[index]['status'] == 'done',
            taskTitle: taskss[index]['title'],
            checkBoxChange: (newValue) {
              String newStatus = (newValue == true) ? 'done' : 'new';
              onUpdate(newStatus, taskss[index]['id']);
            },
            deleteTask: () {
              onDelete(taskss[index]['id']);
            },
          );
        });
  }
}
