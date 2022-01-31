import 'package:flutter/material.dart';
import 'package:menstrual_cycle_app/constants.dart';

class About extends StatefulWidget {
  const About({ Key? key }) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title:  Text(
          'About Page!!!',
          style: textStyle.copyWith(
            color: Colors.black54,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}