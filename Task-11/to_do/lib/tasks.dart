import 'package:flutter/material.dart';
import 'package:to_do/task.dart';
import 'package:to_do/task_list.dart';

class tasks extends StatefulWidget {
  final List<Task> taskss;

  tasks({required this.taskss});
  @override
  State<tasks> createState() => _tasksState();
}

class _tasksState extends State<tasks> {


  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: widget.taskss.length,
        itemBuilder: (context ,index){
      return task_list(
        isChecked: widget.taskss[index].isdone,
        taskTitel: widget.taskss[index].name,
        checkBoxChange: (newvalue) {
            setState(() {
              widget.taskss[index].DoneChanged();

            });
            },
      );
    });













    // return ListView(
    //   children: [
    //     task_list(
    //       taskTitel: Tasks[0].name,
    //       isChecked: Tasks[0].isdone,
    //     ),
    //     SizedBox(height: 5,),
    //     task_list(
    //       taskTitel: Tasks[1].name,
    //       isChecked: Tasks[1].isdone,
    //     ),
    //     SizedBox(height: 5,),
    //     task_list(
    //       taskTitel: Tasks[2].name,
    //       isChecked: Tasks[2].isdone,
    //     ),
    //
    //
    //   ],
    // );
  }
}

