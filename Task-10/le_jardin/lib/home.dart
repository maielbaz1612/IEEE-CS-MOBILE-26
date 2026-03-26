import 'package:flutter/material.dart';
import 'package:le_jardin/details.dart';
import 'package:le_jardin/flowers.dart';
import 'package:le_jardin/herbs.dart';
import 'package:le_jardin/indoors_screen.dart';
import 'package:le_jardin/outdoors.dart';
import 'package:le_jardin/start_screen.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Home();

}
class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.shopping_cart_outlined,color: Colors.white,),backgroundColor: Colors.teal[900],),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.teal[900],
                    hintText: "Search Store",
                    hintStyle: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold),
                    border: InputBorder.none,
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),),
                Padding(padding:EdgeInsets.only(left: 10)),
                Container(
                  decoration: BoxDecoration(color: Colors.teal[900],borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: IconButton(onPressed:(){} ,
                      icon: Icon(Icons.menu_rounded),color: Colors.white,iconSize: 30,),
                ),
              ],
            ),
            SizedBox(height: 30,),

            Container(
              height: 150,
              width: 500,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Indoors()));
                        });
                        },
                      child: Column(
                        children: [
                          Container(decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(10))),margin: EdgeInsets.all(10),height: 100,child: Image.asset("images/houseplants.png"),),
                          Text("Indoors",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 17),),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Outdoors()));
                        });
                      },
                      child: Column(
                        children: [
                          Container(decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(10))),margin: EdgeInsets.all(10),height: 100,child: Image.asset("images/plants.png")),
                          Text("Outdoors",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 17)),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Flowers()));
                        });
                      },
                      child: Column(
                        children: [
                          Container(decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(10))),margin: EdgeInsets.all(10),height: 100,child: Image.asset("images/popular/cluster-of-pink-flowers.png"),),
                          Text("Flowers",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 17)),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Herbs()));
                        });
                      },
                      child: Column(
                        children: [
                          Container(decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(10))),margin: EdgeInsets.all(10),height: 100,child: Image.asset("images/Houseplants/vivid-rosemary.png",height: 50,),),
                          Text("Herbs",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 17)),
                        ],
                      ),
                    ),
                  ],
                )
                ],
              ),
            ),

            SizedBox(height: 30,),
            Text("Popular",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 26),),
            SizedBox(height: 10,),
            GridView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 200),
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo: "images/popular/jasmine.png",titel: "Jasmine",price: "120 LE",)));
                  },
                child: Card(
                  child: Column(children: [
                    Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/popular/jasmine.png",height: 150,)),
                    Text("Jasmine",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("120 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)

                  ]
                  ,)),
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
                    Text("Indoor Plant",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("200 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                  ],),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo:"images/popular/snake-plant.png",titel: "Snake Plant",price: "150 LE",)));
                },
                child: Card(
                  child: Column(children: [
                    Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/popular/snake-plant.png",height: 150,)),
                    Text("Snake Plant",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("150 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                  ],),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo:"images/Houseplants/fresh-peppermint.png",titel: "Fresh Peppermint",price: "60 LE",)));
                },
                child: Card(
                  child: Column(children: [
                    Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/Houseplants/fresh-peppermint.png",height: 150,)),
                    Text("Fresh Peppermint",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("60 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                  ],),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo:"images/popular/cluster-of-pink-flowers.png",titel: "Pink Flowers",price: "130 LE",)));
                },
                child: Card(
                  child: Column(children: [
                    Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/popular/cluster-of-pink-flowers.png",height: 150,)),
                    Text("Pink Flowers",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("130 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)
                  ],),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>details(photo:"images/popular/aloe-vera.png",titel: "Aloe Vera",price: "70 LE",)));
                },
                child: Card(
                  child: Column(children: [
                    Container(
                        color: Colors.grey[200],
                        child: Image.asset("images/popular/aloe-vera.png",height: 150,)),
                    Text("Aloe Vera",style: TextStyle(color: Colors.teal[900],fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("70 LE",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),)

                  ],),
                ),
              )

            ],),
          ],
        ),
      )
    );
  }

}