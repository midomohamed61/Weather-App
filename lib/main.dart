import 'package:flutter/material.dart';
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
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
