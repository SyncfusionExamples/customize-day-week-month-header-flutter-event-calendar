import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(ScheduleViewCustomization());

class ScheduleViewCustomization extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: SfCalendar(
          view: CalendarView.schedule,
          scheduleViewSettings: ScheduleViewSettings(
              dayHeaderSettings: DayHeaderSettings(
                  dateTextStyle: TextStyle(color: Colors.green, fontSize: 10),
                  dayFormat: 'EEEE',
                  dayTextStyle: TextStyle(color: Colors.red, fontSize: 10)),
              weekHeaderSettings: WeekHeaderSettings(
                  weekTextStyle: TextStyle(
                    color: Colors.pink,
                  ),
                  startDateFormat: 'MMMM dd, yyyy',
                  endDateFormat: 'MMMM dd, yyyy'),
              monthHeaderSettings: MonthHeaderSettings(
                  monthFormat: 'MMM  yyyy',
                  backgroundColor: Colors.teal,
                  monthTextStyle: TextStyle(color: Colors.black),textAlign: TextAlign.center)),
          dataSource: _getCalendarDataSource(),
        )),
      ),
    );
  }

  _AppointmentDataSource _getCalendarDataSource() {
    List<Appointment> appointments = <Appointment>[];
    appointments.add(Appointment(
      startTime: DateTime(
        2020,
        12,
        14,
        7,
        30,
        0,
      ),
      endTime: DateTime(2020, 12, 14, 8, 15, 0),
      subject: 'Retrospective',
      color: Colors.green,
    ));
    appointments.add(Appointment(
      startTime: DateTime(
        2020,
        12,
        15,
        7,
        30,
        0,
      ),
      endTime: DateTime(2020, 12, 15, 8, 15, 0),
      subject: 'Planning',
      color: Colors.pink,
    ));
    return _AppointmentDataSource(appointments);
  }
}

class _AppointmentDataSource extends CalendarDataSource {
  _AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }
}
