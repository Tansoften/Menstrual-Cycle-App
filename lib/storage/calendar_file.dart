import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:menstrual_cycle_app/algorithms/nextmenstruation.dart';
import 'package:path_provider/path_provider.dart';

class StorageFile extends StatefulWidget {
  const StorageFile({Key? key}) : super(key: key);

  @override
  _StorageFileState createState() => _StorageFileState();
}

class _StorageFileState extends State<StorageFile> {
  String data = '';
  Menstruation menstruation = Menstruation();

  //Store information in the documents directory.
  Future<String> get _localPath async {
    final dir = await getApplicationDocumentsDirectory();

    print(dir.path);
    return dir.path;
  }

  //Create a reference to a file location
  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/calendar.txt');
  }

  // Reading from the file
  Future<String> readContent() async {
    try {
      final file = await _localFile;
      String contents = await file.readAsString();

      return contents;
    } catch (e) {
      return 'Error!';
    }
  }

//Writing to the file
  Future<File> writeContent() async {
    final file = await _localFile;
    // data = 'Hello Gemstone';
  
    // ignore: avoid_print
    print(menstruation.getPeriodLength());
    return file.writeAsString('Hey am a file ');
  }

  @override
  void initState() {
    super.initState();
    writeContent();
    readContent().then((String value) {
      setState(() {
        data = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(data),
      ],
    );
  }
}
