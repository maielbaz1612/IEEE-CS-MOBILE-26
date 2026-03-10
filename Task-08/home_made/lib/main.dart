import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    'image/firstscene.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Icon(Icons.arrow_back_ios, color: Colors.white),

                        Row(
                          children: [
                            Icon(Icons.share, color: Colors.white),
                            SizedBox(width: 20),
                            Icon(Icons.bookmark_border, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                DraggableScrollableSheet(
                  initialChildSize: 0.5,
                  minChildSize: 0.3,
                  maxChildSize: 0.9,
                  builder: (BuildContext context, ScrollController scrollController) {
                    return Container(
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(30)), boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],),
                      child: ListView(
                        controller: scrollController,
                        padding: EdgeInsets.all(20),
                        children: [
                          Center(
                            child: Container(
                              width: 50,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.yellow[300],
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),

                          Text(
                            "Healthy Grilled Chicken",
                            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          Text("By Mai.M.M", style: TextStyle(color: Colors.grey)),

                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.all(.circular(15)),color: Colors.grey[100]),
                                child: Column(
                                  children: [
                                    Icon(Icons.timer,color: Colors.lightBlue,),
                                    Text("1 hour",style: TextStyle(color: Colors.lightBlue),)
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.all(.circular(15)),color: Colors.grey[100]),
                                child: Column(
                                  children: [
                                    Icon(Icons.person,color: Colors.lightBlue,),
                                    Text("3 person",style: TextStyle(color: Colors.lightBlue),)
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.all(.circular(15)),color: Colors.grey[100]),
                                child: Column(
                                  children: [
                                    Icon(Icons.local_fire_department_outlined,color: Colors.redAccent,),
                                    Text("easy",style: TextStyle(color: Colors.lightBlue),)
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20),

                          Row(
                            children: [
                                Icon(Icons.shopping_cart_sharp,color: Colors.blueAccent,),
                                Text("Ingredients\n",style: TextStyle(color: Colors.green[900],fontWeight: FontWeight.bold,fontSize: 20),)
                            ],
                          ),
                          Text("Protein:",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("2 Large chicken breasts (boneless & skinless)",style: TextStyle(color: Colors.grey[700])),
                          Text("The Marinade:",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("2 tbsp Olive oil (healthy fats)\n1 tbsp Fresh lemon juice\n2 cloves of Garlic (minced)\n1 tsp Dried oregano or Thyme\nSalt and black pepper to taste.\n\n"
                            ,style: TextStyle(color: Colors.grey[700]),),
                          Text("🥗 Serving Suggestion",style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Serve it with a side of steamed broccoli and quinoa or a fresh green salad for a complete healthy meal.")

                        ],
                      ),
                    );
                  },
                ),
              ],
            ),));
    }
  }