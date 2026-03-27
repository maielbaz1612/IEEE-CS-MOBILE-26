import 'package:flutter/material.dart';
import 'package:to_do/task.dart';
class task_list extends StatelessWidget {
  final bool? isChecked ;
  final String taskTitel;
  final void Function(bool?) checkBoxChange;
  task_list({required this.isChecked ,required this.taskTitel, required this.checkBoxChange });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.yellow[100]),
      child:
        ListTile(
            title: Text( taskTitel ,style: TextStyle(fontSize: 20),),
            trailing:Checkbox(
                  value: isChecked,
                  activeColor: Colors.lightGreen[900],
                  onChanged: checkBoxChange,
          )
    ));}}
