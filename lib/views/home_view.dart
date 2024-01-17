import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/views/search_view.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather app"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SearchView();
                }));
              },
              icon: Icon(Icons.search)),
        ],
      ),
      //<cubit,state> اساسيه
      body: BlocBuilder<GetWeatherCubit,GetWeatherState>(
        builder:(context,state){
          if(state is GetWeatherInitial){
            return NoWeatherody();
          } else if (state is WeatherLoadedState){

            return WeatherInfoBody();
          }
          else {
            return Text('opps there is an error');
          }
        },
      ),
    );
  }
}
