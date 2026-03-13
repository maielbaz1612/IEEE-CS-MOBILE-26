import 'dart:math';

import 'package:flutter/material.dart';

import 'bmi_result.dart';


class Screen1 extends StatefulWidget{
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  double height = 150;
  double weight = 60;
  int age = 21;
  bool clicked = true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title:
          Text("health tracker",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
          leading:
            Icon(Icons.arrow_back_ios,color: Colors.white,)
          ,
        ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
            child: Text("BMI Calculator",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("   Gender:",style: TextStyle(color: Colors.blueGrey[100],fontSize: 20,fontWeight: FontWeight.bold,),),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      clicked = true;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 130,
                        height: 100,
                        decoration: BoxDecoration(color: clicked? Colors.white:Colors.blueGrey[200],borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Image.asset("images/female.png",height: 100,),

                      ),
                      SizedBox(height: 10,),
                      Text("Female",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      clicked = false;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 130,
                        height: 100,
                        decoration: BoxDecoration(color:clicked? Colors.blueGrey[100]:  Colors.white ,borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Image.asset("images/male.png",height: 100,),
                        ),
                      SizedBox(height: 10,),
                      Text("Male",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("   Height:",style: TextStyle(color: Colors.blueGrey[100],fontSize: 20,fontWeight: FontWeight.bold,),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(color: Colors.blueGrey[200],borderRadius: BorderRadius.all(Radius.circular(10))),
                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("images/height.png",height: 40,),
                        SizedBox(height: 5,),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.blueGrey[900], fontSize: 20), // التنسيق الأساسي
                            children: [
                              TextSpan(
                                text: '${height.toInt()}',
                                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold), // الكلمة الأولى كبيرة
                              ),
                              TextSpan(
                                text: 'cm',
                                style: TextStyle(fontSize: 15, color: Colors.white), // الكلمة الثانية أصغر ولونها رمادي
                              ),
                            ],
                          ),
                        ),
                        Slider(
                            value: height,
                            min: 0,
                            max: 300,
                            activeColor: Colors.blueGrey[900],
                            onChanged: (value){
                              setState(() {
        
                              });
                              height = value;
                            })
                      ],
          )
                )
              ],
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("   Weight:",style: TextStyle(color: Colors.blueGrey[100],fontSize: 20,fontWeight: FontWeight.bold,),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(color: Colors.blueGrey[200],borderRadius: BorderRadius.all(Radius.circular(10))),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/weight.png",height: 25,),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.blueGrey[900], fontSize: 20), // التنسيق الأساسي
                                children: [
                                  TextSpan(
                                    text: '${weight.toInt()}',
                                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold), // الكلمة الأولى كبيرة
                                  ),
                                  TextSpan(
                                    text: 'kg',
                                    style: TextStyle(fontSize: 15, color: Colors.white), // الكلمة الثانية أصغر ولونها رمادي
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Slider(
                            value: weight,
                            min: 0,
                            max: 300,
                            activeColor: Colors.blueGrey[900],
                            onChanged: (value){
                              setState(() {
        
                              });
                              weight = value;
                            })
                      ],
                    )
                )
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("   Age:",style: TextStyle(color: Colors.blueGrey[100],fontSize: 20,fontWeight: FontWeight.bold,),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(color: Colors.blueGrey[200],borderRadius: BorderRadius.all(Radius.circular(10))),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.blueGrey[900], fontSize: 20), // التنسيق الأساسي
                                children: [
                                  TextSpan(
                                    text: '${age.toInt()}',
                                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold), // الكلمة الأولى كبيرة
                                  ),
                                  TextSpan(
                                    text: 'Years',
                                    style: TextStyle(fontSize: 15, color: Colors.white), // الكلمة الثانية أصغر ولونها رمادي
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        CircleAvatar(
                            backgroundColor: Colors.blueGrey[300],
                            child:
                            IconButton(onPressed: (){
                              age++;
                              setState(() {

                              });
                            },
                                icon: Icon(Icons.add))),
                        CircleAvatar(
                          backgroundColor: Colors.blueGrey[300],
                          child: IconButton(onPressed: (){
                            age--;
                            setState(() {
                              
                            });
                          },
                              icon: Icon(Icons.remove)),
                        )
                      ],
                    )
                )
              ],
            ),
            SizedBox(height: 20,),
            Container(
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                height: 60,
                width: 300,
                child: MaterialButton(onPressed:(){
                  double result = weight / pow(height / 100 , 2);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> BmiResult(
                    Gender: clicked?'Female':'Male',
                    age: age,
                    result: result.toInt(),
                    height: height.toInt(),
                    weight: weight.toInt(),)));
                },child: Text("Calculate your BMI",style: TextStyle(color: Colors.blueGrey[900],fontWeight: FontWeight.bold,fontSize: 26),),))
          ],
        ),
      ),
      );
  }
}
