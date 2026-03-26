import 'package:flutter/material.dart';
import 'details.dart';
import 'home.dart';

class Outdoors extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Outdoors();

}
class _Outdoors extends State<Outdoors>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal[900],
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        title: Text(textAlign: TextAlign.center,"Outdoor Plants",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 200),
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/bougainvillea-glabra.png",titel: "Bougainvillea Glabra",price: "300 LE",)));
              },
              child: Card(
                  child: Column(children: [
                    Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/bougainvillea-glabra.png",height: 150,)),
                    Text("Bougainvillea Glabra",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("300 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                  ]
                    ,)),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/platanus-acerifolia-tree.png",titel: "Platanus Acerifolia",price: "350 LE",)));
              },
              child: Card(
                  child: Column(children: [
                    Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/platanus-acerifolia-tree.png",height: 150,)),
                    Text("Platanus Acerifolia",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("350 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                  ],
                  )),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/banana-tree.png",titel: "Banana Tree",price: "230 LE",)));
              },
              child: Card(
                  child: Column(children: [
                    Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/banana-tree.png",height: 150,)),
                    Text("Banana Tree",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("230 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                  ],
                  )),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/delonix-regia-tree.png",titel: "Delonix Regia Tree",price: "500 LE",)));
              },
              child: Card(
                child: Column(children: [
                  Container(
                      color: Colors.grey[200],
                      child: Image.asset("images/delonix-regia-tree.png",height: 150,)),
                  Text(textAlign: TextAlign.center,"Delonix Regia Tree",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                  Text("500 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                ],),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/caesalpinia-pulcherrima.png",titel: "Caesalpinia Pulcherrima",price: "410 LE",)));
              },
              child: Card(
                child: Column(children: [
                  Container(
                      color: Colors.grey[200],
                      child: Image.asset("images/caesalpinia-pulcherrima.png",height: 150,)),
                  Text(textAlign: TextAlign.center,"Caesalpinia Pulcherrima",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                  Text("410 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                ],),
              ),
            ),
          ]),
    );}

}