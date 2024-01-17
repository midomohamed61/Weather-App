import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather/views/home_view.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => GetWeatherCubit(),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark
        ),
        home: HomeView(),
      ),
    );
  }
}

// cubit pattern steps
// -----------
// create states
// create cubit
// provide cubit
// integrate cubit
// triggrt cubit
