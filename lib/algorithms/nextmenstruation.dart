//import 'package:flutter/material.dart';
import 'dart:io';

class Menstruation {
  int periodLength = 28;
  String answer = "yes";
  // DateTime lastPerioDate = DateTime.now();

  int getPeriodLength() {
    return periodLength;
  }

  void nextMenstruation() {
    if (periodLength > 0 && periodLength > 21 && periodLength < 36) {
      if (answer == "yes" || answer == "YES" || answer == "Yes") {
        print(
          "welcome, what was your last period date ?",
        );
        DateTime lastPeriodDate = DateTime.parse(
          stdin.readLineSync()!,
        );

        var nextPeriodDate = lastPeriodDate.add(
          Duration(days: periodLength),
        );
        print(
          "Your next period will be on $nextPeriodDate",
        );
      } else {
        print("am  not new user");
      }
    } else {
      print(
        "period only runs within 22 to 35 days!!",
      );
    }
  }

 
}

void main() {
  Menstruation menstruation = Menstruation();
  menstruation.nextMenstruation();
}
