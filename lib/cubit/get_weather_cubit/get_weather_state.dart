part of 'get_weather_cubit.dart';

@immutable
abstract class GetWeatherState {}

class GetWeatherInitial extends GetWeatherState {}
//------------

class WeatherLoadedState extends GetWeatherState {}

class WeatherFailureState extends GetWeatherState {}

