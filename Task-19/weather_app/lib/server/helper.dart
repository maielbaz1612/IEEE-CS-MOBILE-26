import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class Helper{
  final dio = Dio();

  Future<weather_model> getData(String cityName) async {
    final response = await dio.get('https://api.weatherapi.com/v1/forecast.json?key=f92417adebf74911ae6223847231204&q=$cityName&days=7');
    weather_model weatherModel = weather_model.fromJson(response.data);
    return weatherModel;

  }
}
