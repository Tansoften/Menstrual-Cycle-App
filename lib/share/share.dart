import 'package:flutter/material.dart';
import 'package:menstrual_cycle_app/constants.dart';

class Share extends StatefulWidget {
  const Share({Key? key}) : super(key: key);

  @override
  _ShareState createState() => _ShareState();
}

class _ShareState extends State<Share> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title:  Text(
          ' share Page!!!',
          style: textStyle.copyWith(
            color: Colors.black54,
            fontSize: 30,
          ),
        ),
      ),
      body:  Center(
        heightFactor: 2,
        child: Text(
          'www.tansoften.com',
          style: textStyle.copyWith(
            fontSize: 30,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
