import 'dart:ui';

import 'package:flutter/material.dart';
class WeatherInfoBody extends StatefulWidget {
  const WeatherInfoBody({super.key});

  @override
  State<WeatherInfoBody> createState() => _WeatherInfoBodyState();
}

class _WeatherInfoBodyState extends State<WeatherInfoBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("cairo",
          style: TextStyle(
            fontWeight:FontWeight.bold ,
            fontSize: 32,
          ),
          ),
          Text("updated at 20:23",
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
              Image.asset("assets/images/cloudy.png"),
              Text("17",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32
              ),
              ),
              Column(
                children: [
                  Text("MAxTemp 24",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  ),
                  Text("MinTemp 16",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  )
                ],
              )
            ],
          ),
          Text("light Rain",
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
