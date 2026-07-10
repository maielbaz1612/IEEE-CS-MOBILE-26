class weather_model{
  final String name;
  final String country;
  final String region;
  final double tempC;
  final String text;
  final String mainIcon;
  final List<ForecastDay> forecastDay;

  weather_model({
    required this.name,
    required this.tempC,
    required this.text,
    required this.mainIcon,
    required this.forecastDay, required this.country, required this.region
  });
  factory weather_model.fromJson(Map<String,dynamic>json){
    return weather_model(
        name: json['location']['name'],
        tempC: json['current']['temp_c'],
        text: json['current']['condition']['text'],
        mainIcon: json['current']['condition']['icon'],
        forecastDay: (json['forecast']['forecastday']as List).map((e)=> ForecastDay.fromJson(e)).toList(),
        country: json['location']['country'],
        region: json['location']['region']);
    }

}

class ForecastDay{
  final String date;
  final double avgT;
  final String listIcon;
  final List<Hour> hour;

  ForecastDay({required this.date, required this.avgT, required this.listIcon, required this.hour});
  factory ForecastDay.fromJson(Map<String,dynamic>json){
    return ForecastDay(
        date: json['date'],
        avgT: json['day']['avgtemp_c'],
        listIcon: json['day']['condition']['icon'],
        hour: (json['hour'] as List).map((e)=> Hour.fromJson(e)).toList());
  }

}

class Hour{
  final String time;
  final String icon;
  final double temp;

  Hour({required this.time, required this.icon, required this.temp});
  factory Hour.fromJson(Map<String,dynamic>json){
    return Hour(
        time: json['time'],
        temp: json['temp_c'],
        icon: json['condition']['icon']);
  }
}