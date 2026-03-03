import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.teal[200],
        title:
        Container(
          color: Colors.teal[200],
          child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Task-07", style: TextStyle(color: Colors.white,fontSize:18,fontWeight: FontWeight.bold)),
                  Icon(Icons.favorite_border)
                ],
              )
        )),
          body: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.teal[500],border: Border.all(color: Colors.teal),borderRadius: BorderRadius.all(.circular(15))),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              alignment: Alignment(10, 10),
              child: Row(
                mainAxisAlignment :MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.person,size: 50,color: Colors.white,),
                  Column(
                    crossAxisAlignment :CrossAxisAlignment.start,
                    children: [
                      Text("Mai Mahmoud Mohamed",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                      Text("Flutter Developer", style: TextStyle(color: Colors.white,fontSize: 10 ,fontWeight: FontWeight.bold,))
                    ],
                  )
                ],
              )
            ),
            Container(
                decoration: BoxDecoration(color: Colors.teal[500],borderRadius: BorderRadius.all(.circular(15)),border: Border.all(color: Colors.teal)),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Text("faculty of engineering Zagazig university\nComputers and control systems\n2023-2028",style: TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
            ),
            Container(
                decoration: BoxDecoration(color: Colors.teal[500],borderRadius: BorderRadius.all(.circular(15)),border: Border.all(color: Colors.teal)),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.double_arrow_outlined,color: Colors.white,),
                        Text("Skills : ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w800),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right,color: Colors.white,),
                        Text("Problem Solving",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w800),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right,color: Colors.white,),
                        Text("Market Research",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w800),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right,color: Colors.white,),
                        Text("Teamwork",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w800),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right,color: Colors.white,),
                        Text("Presentation Skills",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w800),),
                      ],
                    ),
                  ],
                )
            ),
            Container(
              decoration: BoxDecoration(color: Colors.teal[500],borderRadius: BorderRadius.all(.circular(15)),border: Border.all(color: Colors.teal)),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.file_copy_rounded,color: Colors.amberAccent),
                      Text("Projects:",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w800),),
                      Text("+5",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w800),)
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.bug_report_rounded,color: Colors.indigo),
                      Text("Bugs:",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w800),),
                      Text('\u221E',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w800),)
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.coffee,color: Colors.brown[800]),
                      Text("Coffee",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w800),),
                      Text('\u221E',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w800),)
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.directions_bike,color: Colors.deepOrange),
                      Text("Hobbies:",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w800),),
                      Text('+5',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w800),)
                    ],
                  ),
                ],
              ),
            ),
          ],
        )

      )
    );
  }
}
