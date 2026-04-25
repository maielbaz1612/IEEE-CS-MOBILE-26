import 'package:flutter/material.dart';
import 'package:to_do/add_task.dart';
import 'package:to_do/setting.dart';
import 'package:sqflite/sqflite.dart';
import 'package:to_do/tasks.dart';
import 'package:path/path.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _Homescreen();

}


class _Homescreen extends State<Home> {

  late Database database ;
  List<Map> tasks =[];
  Future<void> creatDataBase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'tasks_database.db');

    database = await openDatabase(path, version: 1,
        onCreate: (db, version) async {
          await db.execute(
              'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, status TEXT)');
        },
        onOpen: (db) async {
          refreshData();
        }
    );
  }
  void insertToDataBase({required String title, required String status}) async {
    await database.transaction((txn) async {
      await txn.rawInsert('INSERT INTO tasks(title, status) VALUES("$title","$status")');
    }).then((value) {
      refreshData();
    });
  }
  void updateDatabase({required String status, required int id}) async {
    await database.rawUpdate(
      'UPDATE tasks SET status = ? WHERE id = ?',
      [status, id],
    ).then((value) => refreshData());
  }

  void deleteFromDatabase({required int id}) async {
    await database.rawDelete('DELETE FROM tasks WHERE id = ?', [id])
        .then((value) => refreshData());
  }
  Future<List<Map>> getDataFromDataBase()async{
    setState(() {

    });
    return await database.rawQuery('SELECT * FROM tasks');
  }
  void refreshData() async {
    List<Map> value = await database.rawQuery('SELECT * FROM tasks');
    setState(() {
      tasks = value;
    });
  }

  @override
  void initState() {
    super.initState();
    creatDataBase();
  }
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
      floatingActionButton:
      FloatingActionButton(onPressed: (){
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: add_task(
            addTaskCall: (newTaskTitle) {
              insertToDataBase(title: newTaskTitle, status: 'new');
              Navigator.pop(context);
            },
          ),)
        ));
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
            Padding(padding: EdgeInsets.only(left: 20), child: Text("To-Do",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(20),
              height: 500,
              child: Tasks(
                taskss: tasks,
                onUpdate: (status, id) {
                  updateDatabase(status: status, id: id);
                },
                onDelete: (id) {
                  deleteFromDatabase(id: id);
                },
              ),
            )

          ],
        ),
          
      );
  }
}
