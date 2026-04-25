import 'package:flutter/material.dart';
import 'package:to_do/task.dart';
import 'package:to_do/tasks.dart';

class add_task extends StatelessWidget {
  final Function addTaskCall ;
  const add_task({super.key, required this.addTaskCall});


  @override
  Widget build(BuildContext context) {
    String? newTaskData ;
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.yellow[100],borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          Text("Add New Task",style: TextStyle(color: Colors.lightGreen[900],fontSize: 25,fontWeight: FontWeight.bold),),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText){
              newTaskData = newText;
            },
          ),
          SizedBox(height: 10,),
          Container(
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(15))),
              width: 200,
              child: TextButton(onPressed: (){
                if (newTaskData != null && newTaskData!.isNotEmpty) {
                  addTaskCall(newTaskData);
                } else {
                  print("loading...");
                }
                },
              child: Text("Add",style: TextStyle(color: Colors.lightGreen[900],fontSize: 15,fontWeight: FontWeight.bold),))),
        ],
      ),
    );
  }
}
