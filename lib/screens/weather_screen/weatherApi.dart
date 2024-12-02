import 'dart:convert';

import 'package:newtourly/model/waethermodel.dart';
import 'package:newtourly/screens/weather_screen/weatherConst.dart';
import 'package:http/http.dart' as http;

class Weatherapi {
  final String baseUrl = "http://api.weatherapi.com/v1/current.json";

  Future<ApiResponse> getCurrentWeather(String location) async{
    String apiUrl = "$baseUrl?key=$apiKey&q=$location";
    try{
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode ==200){
        return ApiResponse.fromJson(jsonDecode(response.body));
      }else{
        throw Exception("Failed to Load Weather");
      }

    }catch(e){
      throw Exception("Failed to Load Weather");

    }
  }
}