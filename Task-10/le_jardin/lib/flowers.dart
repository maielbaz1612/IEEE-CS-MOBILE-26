import 'package:flutter/material.dart';
import 'details.dart';
import 'home.dart';

class Flowers extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Flowers();

}
class _Flowers extends State<Flowers>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal[900],
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        title: Text(textAlign: TextAlign.center,"Flowers",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 200),
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/popular/cluster-of-pink-flowers.png",titel: "Pink Flowers",price: "80 LE",)));
              },
              child: Card(
                  child: Column(children: [
                    Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/popular/cluster-of-pink-flowers.png",height: 150,)),
                    Text("Pink Flowers",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("80 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                  ]
                    ,)),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/popular/jasmine.png",titel: "Jasmine",price: "100 LE",)));
              },
              child: Card(
                  child: Column(children: [
                    Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/popular/jasmine.png",height: 150,)),
                    Text("Jasmine",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("100 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                  ],
                  )),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/blooming-begonia.png",titel: "begonia",price: "80 LE",)));
              },
              child: Card(
                  child: Column(children: [
                    Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/blooming-begonia.png",height: 150,)),
                    Text("begonia",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("80 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                  ],
                  )),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/red-rose.png",titel: "Red Rose",price: "100 LE",)));
              },
              child: Card(
                child: Column(children: [
                  Container(
                      color: Colors.grey[200],
                      child: Image.asset("images/red-rose.png",height: 150,)),
                  Text(textAlign: TextAlign.center,"Red Rose",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                  Text("100 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                ],),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/peach-rose.png",titel: "Peach Rose",price: "100 LE",)));
              },
              child: Card(
                child: Column(children: [
                  Container(
                      color: Colors.grey[200],
                      child: Image.asset("images/peach-rose.png",height: 150,)),
                  Text(textAlign: TextAlign.center,"Peach Rose",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                  Text("100 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                ],),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/yellow-roses.png",titel: "Yellow Rose",price: "80 LE",)));
              },
              child: Card(
                child: Column(children: [
                  Container(
                      color: Colors.grey[200],
                      child: Image.asset("images/yellow-roses.png",height: 150,)),
                  Text(textAlign: TextAlign.center,"Yellow Rose",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                  Text("80 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                ],),
              ),
            ),
          ]),
    );}

}