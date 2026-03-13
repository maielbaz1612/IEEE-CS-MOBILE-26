import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  const BmiResult ({super.key, required this.Gender, required this.age, required this.result, required this.height, required this.weight});
  final String Gender;
  final int age ;
  final int result;
  final int height ;
  final int weight ;


@override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[900],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title:
          Text("result",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
        ),
  body: Column(
    children: [
      Text("Your Summary",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
      SizedBox(height: 10,),
      Text("Height:\t $height",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
      SizedBox(height: 10,),
      Text("Weight:\t $weight",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
      SizedBox(height: 10,),
      Text("Age:\t $age",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
      SizedBox(height: 30,),
      Container(
        alignment: Alignment.center,
        child: Container(
            decoration: BoxDecoration(color: Colors.cyan[100],borderRadius: BorderRadius.circular(15)),
            height: 100,
            width: 300,
            child: Column(
              children: [
                Text("Your BMI Result",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                Text("$result",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),)
              ],
            )
      )
  )
]
),
    );
}}
