import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather/model/weather_model.dart';

class WeatherService {
  late final Dio dio;
  final String baseUrl = "https://api.weatherapi.com/v1";
  final String apiKey = '54b26e833908487eb3e05854241501';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response= await dio.get(
          '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
       WeatherModel weatherModel = WeatherModel.fromJson(response.data);

         return weatherModel;
    } on DioException catch(e) {
      final String errMessage = e.response?.data['error']['message']??'there is an error';
      throw Exception(errMessage);
    }
    catch (e){
      log(e.toString());
      throw Exception("try later there is an error");
    }
  }
}
