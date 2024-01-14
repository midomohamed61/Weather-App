import 'package:flutter/material.dart';

class NoWeatherody extends StatefulWidget {
  const NoWeatherody({super.key});

  @override
  State<NoWeatherody> createState() => _NoWeatherodyState();
}

class _NoWeatherodyState extends State<NoWeatherody> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('there is no weather for now',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text('searching now 🔍',
              style: TextStyle(
                fontSize: 20
              ),
            )
          ],
        ),
      ),
    );
  }
}
