import 'package:flutter/material.dart';

class details extends StatefulWidget {
  final photo;
  final titel;
  final price;
  const details({super.key,this.photo,this.titel, this.price});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: (){
                        
                      },
                      child: Icon(Icons.favorite_border,))
                ],
              )
          ),
        iconTheme: IconThemeData(color:  Colors.teal[900]),
      ),
      body: ListView(
        children: [
          Image.asset(widget.photo),
          Text(textAlign: TextAlign.center,widget.titel,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.teal[900]),),
          Text(textAlign: TextAlign.center,"description for this plant",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
          Text(textAlign: TextAlign.center,widget.price,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black,)),
          SizedBox(height: 50,),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.teal[900]),
            margin: EdgeInsets.all(60),
            child: MaterialButton(onPressed: (){
              setState(() {

              });
            },child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),),
          )
        ],
      ),
    );
  }
}
