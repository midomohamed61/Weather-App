import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/services/weather_services.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search text"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16),
        child: Center(
          child: TextFormField(
            onChanged: (value) async {
              Navigator.of(context).pop();
              },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 32,horizontal: 16),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                  color: Colors.black
              )
              ),
              hintText: "Enter city name",
              suffixIcon: Icon(Icons.search),
              labelText: 'Search',
            ),
          ),
        ),
      ),
    );
  }
}
WeatherModel? weatherModel;
