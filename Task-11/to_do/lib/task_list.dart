import 'package:flutter/material.dart';
import 'package:to_do/task.dart';
class task_list extends StatelessWidget {
  final bool? isChecked ;
  final String taskTitel;
  final void Function(bool?) checkBoxChange;
  final VoidCallback deleteTask;
  task_list({required this.isChecked ,required this.taskTitel, required this.checkBoxChange ,required this.deleteTask,});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(color: Colors.yellow[100]),
      child:
        ListTile(
            onLongPress: deleteTask,
            title: Text( taskTitel ,style: TextStyle(fontSize: 20,decoration: isChecked! ? TextDecoration.lineThrough : null,)),
            trailing:Checkbox(
                  value: isChecked,
                  activeColor: Colors.lightGreen[900],
                  onChanged: checkBoxChange,
          )
    ));}}
