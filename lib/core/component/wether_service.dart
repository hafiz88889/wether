import 'dart:convert';

import 'package:http/http.dart'as http;


class WeatherService{
  final String baseUrl="http://api.weatherapi.com/v1/current.json?key=92228008018d45fd9ea60439250305&q=Bangladesh&aqi=no";

  Future<Map<String,dynamic>>featchWeather(String city)async{
    final response=await http.get(Uri.parse("$baseUrl?city$city"));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
