import 'package:flutter/material.dart';
import 'details.dart';
import 'home.dart';

class Indoors extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Indoors();

}
class _Indoors extends State<Indoors>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal[900],
      iconTheme: IconThemeData(
        color: Colors.white
      ),
      title: Text("Indoor Plants",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 200),
          children: [
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/fiddle-leaf-fig.png",titel: "Fiddle Leaf",price: "210 LE",)));
          },
          child: Card(
          child: Column(children: [
              Container(
              color: Colors.grey[200],
              child: Image.asset("images/fiddle-leaf-fig.png",height: 150,)),
              Text("Fiddle Leaf",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
              Text("210 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
              ]
          ,)),
        ),

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/popular/snake-plant.png",titel: "Snake Plant",price: "150 LE",)));
          },
          child: Card(
            child: Column(children: [
                  Container(
                  color: Colors.grey[200],
                  child: Image.asset("images/popular/snake-plant.png",height: 150,)),
                  Text("Snake Plant",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                  Text("150 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                  ],
          )),
        ),

        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/popular/indoor-plants.png",titel: "Indoor Plant",price: "200 LE",)));
          },
          child: Card(
            child: Column(children: [
              Container(
                  color: Colors.grey[200],
                  child: Image.asset("images/popular/indoor-plants.png",height: 150,)),
              Text(textAlign: TextAlign.center,"Indoor Plant",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
              Text("200 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
            ],),
          ),
        ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/asplenium-nidus.png",titel: "Asplenium Nidus",price: "120 LE",)));
              },
              child: Card(
                child: Column(children: [
                  Container(
                      color: Colors.grey[200],
                      child: Image.asset("images/asplenium-nidus.png",height: 150,)),
                  Text(textAlign: TextAlign.center,"Asplenium Nidus",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                  Text("120 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                ],),
              ),
            ),
          ]),
    );}

}