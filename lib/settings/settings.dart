import 'package:flutter/material.dart';
import 'package:menstrual_cycle_app/constants.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  __SettingsState createState() => __SettingsState();
}

class __SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title:  Text(
          'Settings Page!!!',
          style:textStyle.copyWith(
            color: Colors.black54,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
