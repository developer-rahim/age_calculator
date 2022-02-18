import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomeScreen/CalculatorPage.dart';
import 'package:flutter_application_1/HomeScreen/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'rrr'),
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('bn', 'BD') // English
      ],
      debugShowCheckedModeBanner: false,
      title: 'Age Calculator',
      home: HomeScreen(),
    );
  }
}
