import 'package:flutter/material.dart';
import 'package:to_do/add_task.dart';
import 'package:to_do/setting.dart';
import 'package:to_do/task.dart';
import 'package:to_do/tasks.dart';

class Home extends StatefulWidget{
  final Function addTaskCall ;
  const Home({super.key, required this.addTaskCall});
  @override
  State<Home> createState() => _Homescreen();

}

class _Homescreen extends State<Home> {
  List<Task> Tasks = [
    Task(name: "go for shopping"),
    Task(name: "buy tools"),
    Task(name: "repair my car")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.event_note_outlined),label: 'Note')
      ],
      selectedItemColor: Colors.lightGreen[900],
      iconSize: 30,
      backgroundColor: Colors.yellow[100],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(
          isScrollControlled: true,
          context: context, builder: (context)=> SingleChildScrollView(child: Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom
            ),
            child: add_task((newTaskData){
              addTaskCall(newTaskData){
                Tasks.add(Task(name: ));

            }))),);
      },
      backgroundColor: Colors.lightGreen[900],
      child: Icon(Icons.add,size: 30,color: Colors.white,),),
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
      backgroundColor: Colors.yellow[200],
      actions: [
        PopupMenuButton(
          color: Colors.lightGreen[900],
          iconColor: Colors.lightGreen[900],
          itemBuilder: (context)=>[
          PopupMenuItem(child: Text("Settings",style: TextStyle(color: Colors.white,fontSize: 17),),
            onTap:() {Navigator.push(context,MaterialPageRoute(builder: (contest)=> setting()));},)
        ])
      ]
      ),
      body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 20), child: Text("To Dos",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.all(20),
              height: 500,
              child: tasks(),
            )

          ],
        ),
          
      );
  }
}

