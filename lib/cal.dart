import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:menstrual_cycle_app/storage/calendar_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:menstrual_cycle_app/algorithms/nextmenstruation.dart';
import 'package:menstrual_cycle_app/constants.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MyCalendar extends StatefulWidget {
  const MyCalendar({Key? key}) : super(key: key);

  @override
  _MyCalendarState createState() => _MyCalendarState();
}

Menstruation menstruation = Menstruation();

class _MyCalendarState extends State<MyCalendar> {
  DateTime datetime = DateTime.now();
  StorageFile storage = const StorageFile();

  @override
  Widget build(BuildContext context) {
    // _ovulation.ovulationPrediction();

    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 1,
          padding: const EdgeInsets.only(
            bottom: 11,
          ),
          child: ListView(
            children: [
              SfCalendar(
/********************Allowed views for the calendar****************************/
                allowedViews: const <CalendarView>[
                  CalendarView.day,
                  CalendarView.week,
                  CalendarView.workWeek,
                  CalendarView.month,
                  CalendarView.timelineDay,
                  CalendarView.timelineWeek,
                  CalendarView.timelineWorkWeek,
                  CalendarView.timelineMonth,
                ],

                view: CalendarView.month,
                showDatePickerButton: true,
                //  viewNavigationMode: ViewNavigationMode.snap,
                headerDateFormat: 'MMMM',
                monthViewSettings: MonthViewSettings(
                  //appointmentDisplayCount: 2,
                  //showAgenda: true,
                  //agendaViewHeight: 1,
                  //agendaItemHeight: 70,
                  navigationDirection: MonthNavigationDirection.vertical,
                  // numberOfWeeksInView: 6,
                  //showTrailingAndLeadingDates: false,
                  dayFormat: 'EEE',
                  monthCellStyle: MonthCellStyle(
                    textStyle: textStyle.copyWith(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                ),

                viewHeaderStyle: ViewHeaderStyle(
                  dayTextStyle: textStyle.copyWith(
                    color: Colors.black54,
                    fontSize: 15,
                  ),
                ),

                //allowDragAndDrop: true,
                // showCurrentTimeIndicator: true,
                firstDayOfWeek: 1,
                todayHighlightColor: Colors.transparent,
                showNavigationArrow: true,
                headerHeight: 60,
                cellBorderColor: Colors.black54.withOpacity(0.05),
                selectionDecoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueGrey.withOpacity(0.7),
                  border: Border.all(
                    width: 1,
                    style: BorderStyle.solid,
                    color: Colors.grey.withOpacity(0.6),
                  ),
                ),

                headerStyle: CalendarHeaderStyle(
                  textAlign: TextAlign.center,
                  textStyle: textStyle.copyWith(
                    fontSize: 28,
                    height: 1,
                    color: Colors.black54,
                  ),
                ),

                todayTextStyle: textStyle.copyWith(
                  color: Colors.red,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),

/*********** Horizontal line drawn at the botoom of the home Page *************/
        const Divider(
          height: 100,
          thickness: 2,
          indent: 20,
          endIndent: 20,
          color: Color.fromRGBO(135, 135, 135, 100),
        ),
        ListTile(
          title: Text(
            "HIGH-chance of spending money",
            textAlign: TextAlign.center,
            style: textStyle.copyWith(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              height: -3,
              color: const Color.fromRGBO(135, 135, 147, 100),
            ),
          ),
        ),
      ],
    );
  }
}
