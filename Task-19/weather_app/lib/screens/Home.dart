import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.weatherModel});
  final weather_model weatherModel;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    var list = widget.weatherModel.forecastDay[0].hour;
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
          bottom: 20
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20
              ),
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black26,
              ),
              child: Text("Today\'s weather",style: TextStyle(
                color: Colors.white,
              ),),
            ),
            SizedBox(height: 15,),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black26
              ),
              width: double.infinity,
              height: isClicked == true ? 250 : 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.weatherModel.name,style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight(400)),),
                  Text('${widget.weatherModel.tempC}°c',style: TextStyle(
                      fontSize: 60,
                      color: Colors.black54,
                      fontWeight: FontWeight(900)),),
                  Row(
                    children: [
                      Image(image: NetworkImage('https:${widget.weatherModel.mainIcon}'),width: 50,),
                      Text('sunny',style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),),
                      Spacer(),
                      InkWell(
                        onTap: (){
                          setState(() {
                            isClicked = !isClicked ;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                            Text('see details',style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index)=> Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            index > 11 ? Text('${list[index].time.split(' ')[1].split(':')[0]} PM',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),): Text('${list[index].time.split(' ')[1].split(':')[0]} AM',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),),
                            Text('${list[index].temp}°',style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),),
                            Image(image: NetworkImage('https:${list[index].icon}'),width: 50,),
                          ],
                        ),
                        separatorBuilder: (context, index)=> Padding(padding: EdgeInsetsGeometry.symmetric(
                          horizontal: 50,
                          vertical: 5
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.grey,

                        ),),
                        itemCount: list.length),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 20
              ),
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black26,
              ),
              child: Text("weather this week",style: TextStyle(
                color: Colors.white,
              ),),
            ),
            SizedBox(height: 15,),
            Container(
              width: double.infinity,
              height: 160,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)=> Container(
                padding: EdgeInsets.all(5),
                width: 120,
                height: 160,
                decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Friday",style: TextStyle(
                      color: Colors.white,
                    ),),
                    Text(widget.weatherModel.forecastDay[index].date,style: TextStyle(
                      color: Colors.white,
                    ),),
                    Image(image: NetworkImage('https:${widget.weatherModel.forecastDay[index].listIcon}'),width: 50,),
                    Text("${widget.weatherModel.forecastDay[index].avgT}°",style: TextStyle(
                      color: Colors.white,
                    ),),
                  ],
                ),
              ),
                      itemCount: widget.weatherModel.forecastDay.length, separatorBuilder: (context, index)=> SizedBox(width: 15,)
            )
            )],
        ),
      ),
    );
  }
}
