import 'package:flutter/material.dart';
import 'package:weather/widgets/noWeatherBody.dart';
import 'package:weather/widgets/weather_info_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Weather app"),
        actions: [

        ],
      ),
      body: WeatherInfoBody(),
    );
  }
}
