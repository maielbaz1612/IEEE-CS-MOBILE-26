import 'package:flutter/material.dart';
import 'home.dart';

class Start extends StatefulWidget{
  @override
  State<Start> createState() => _Startscreen();

}

class _Startscreen extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.water_drop_outlined,color: Colors.teal[800],size: 25,),
            Text("Welcome to",style: TextStyle(color: Colors.teal[800],fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Le Jardin",style: TextStyle(color: Colors.teal[800],fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Image.asset("images/start.png",height: 200,),
            Text("Find your favorite plants",style: TextStyle(color: Colors.teal[800],fontSize: 15,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(color: Colors.teal[900],borderRadius: BorderRadius.circular(15),),
              height: 50,
              width: 200,
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Home() ));
              },child: Text("Start Shopping",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
            )
          ],
        ),
      ),

    );

  }

}