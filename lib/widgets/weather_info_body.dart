import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/views/search_view.dart';
class WeatherInfoBody extends StatefulWidget {
  const WeatherInfoBody({super.key});

  @override
  State<WeatherInfoBody> createState() => _WeatherInfoBodyState();
}

class _WeatherInfoBodyState extends State<WeatherInfoBody> {
  @override
  Widget build(BuildContext context) {
    var weatherModel =BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(weatherModel!.cityName,
          style: TextStyle(
            fontWeight:FontWeight.bold ,
            fontSize: 32,
          ),
          ),
          Text("updated at ${weatherModel.data.hour}:${weatherModel.data.minute} : ${weatherModel.data.second}",
          style: TextStyle(
            fontSize: 24,
          ),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network("https:${weatherModel.image!}"),
              Text("17",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32
              ),
              ),
              Column(
                children: [
                  Text("MAxTemp ${weatherModel.maxTemp}",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  ),
                  Text("MinTemp ${weatherModel.minTemp}",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  )
                ],
              )
            ],
          ),
          Text(weatherModel.weatherCondition!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
          ),
        ],
      ),
    );
  }
}

