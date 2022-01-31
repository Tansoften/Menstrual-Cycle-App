import 'package:flutter/material.dart';
import 'package:menstrual_cycle_app/dashboard.dart';
//import 'package:menstrual_cycle_app/welcome_demo.dart';
//import 'dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  static const myAppTitle = 'Periodic Calendar';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: myAppTitle,
      //home: WelcomeDemo(),
      home: const HomePage(
        title: myAppTitle,
      ),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          shadowColor: Colors.black54,
          iconTheme: IconThemeData(
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
