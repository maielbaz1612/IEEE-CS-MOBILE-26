import 'package:flutter/material.dart';
import 'package:weather_app/server/helper.dart';

import 'Home.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var searchController = TextEditingController();
  var formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Enter city name",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold,),),
          SizedBox(height: 15,),
          Form(
            key: formKey,
            child: TextFormField(
              validator: (value){
                if (value!.isEmpty) {
                  return 'search must not be empty';
                }
                return null;
              },
              controller: searchController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined)),
                hintText: "Enter city name",
                labelText: 'search',
                hintStyle: TextStyle(color: Colors.black),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.black54),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          MaterialButton(onPressed: () async {
            if(formKey.currentState!.validate()){
              await Helper().getData(searchController.text).then((value){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Home(weatherModel: value,)));
              })
              ;}
          },
          color: Colors.black26,
          child: Text('Search',style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold),),)
        ],
      ),
    );
  }
}
