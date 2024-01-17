import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:weather/model/weather_model.dart';

import '../../services/weather_services.dart';

part 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(GetWeatherInitial());
  late WeatherModel weatherModel;

  getWether({required String cityName}) async {
    try {
       weatherModel = await WeatherService(Dio()).getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedState(weatherModel));
    }catch (e) {
      emit(WeatherFailureState(e.toString()));
    }
  }
}
