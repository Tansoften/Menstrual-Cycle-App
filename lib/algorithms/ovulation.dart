import 'dart:io';

class Ovulation {
  int periodLength = 28;
  int nextOvulation = 0;
  // int currentDate = 1;
  // int nextDate = 30;

  int getNextOvulation() {
    return nextOvulation;
  }

  void ovulationPrediction() {
    periodLength = periodLength;
    nextOvulation = nextOvulation;

    print("what is your period length ?");
    // periodLength = int.parse(
    //   stdin.readLineSync()!,
    // );

    if (periodLength > 0 && periodLength > 21 && periodLength < 36) {
      nextOvulation = periodLength - 14;

      // print("Your next ovulation  will be on ${nextOvulation}th");
      print(
        "Your period length is $periodLength",
      );
    } else {
      print("Enter a valid length");
    }
  }
}

void main() {
  Ovulation ovulation = Ovulation();
  ovulation.ovulationPrediction();

  DateTime dateTime = DateTime.now();

  var newDate = dateTime.add(
   Duration(
      days: ovulation.getNextOvulation(),
    ),
  );
  print(
    "Next ovulation will on $newDate",
  );
}
