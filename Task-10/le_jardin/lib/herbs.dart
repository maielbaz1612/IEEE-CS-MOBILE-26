import 'package:flutter/material.dart';
import 'details.dart';
import 'home.dart';

class Herbs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Herbs();

}
class _Herbs extends State<Herbs>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal[900],
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        title: Text(textAlign: TextAlign.center,"Herbs",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 200),
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/Houseplants/fresh-peppermint.png",titel: "Peppermint",price: "50 LE",)));
              },
              child: Card(
                  child: Column(children: [
                    Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/Houseplants/fresh-peppermint.png",height: 150,)),
                    Text("Peppermint",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("50 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                  ]
                    ,)),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/Houseplants/vivid-rosemary.png",titel: "rosemary",price: "80 LE",)));
              },
              child: Card(
                  child: Column(children: [
                    Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/Houseplants/vivid-rosemary.png",height: 150,)),
                    Text("rosemary",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("80 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                  ],
                  )),
            ),
          ]),
    );}

}