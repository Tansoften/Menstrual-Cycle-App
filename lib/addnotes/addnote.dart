import 'package:flutter/material.dart';
import 'package:menstrual_cycle_app/constants.dart';

class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        shadowColor: Colors.grey,
        title:  Text(
          'Add Note Panel!!!',
          style: textStyle.copyWith(
            color: Colors.black54,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}