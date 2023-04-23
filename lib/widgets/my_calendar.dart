import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class WorkOutCalendarContainer extends StatefulWidget {
  const WorkOutCalendarContainer({Key? key}) : super(key: key);

  @override
  State<WorkOutCalendarContainer> createState() =>
      _WorkOutCalendarContainerState();
}

class _WorkOutCalendarContainerState extends State<WorkOutCalendarContainer> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Calendar',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          TableCalendar(
            focusedDay: _focusedDay,
            firstDay: DateTime.utc(2023, 1, 1),
            lastDay: DateTime.utc(2023, 12, 31),
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
            calendarStyle: const CalendarStyle(
              outsideDaysVisible: false,

              selectedDecoration:
                  BoxDecoration(color: Colors.blueGrey, shape: BoxShape.circle),
              todayDecoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            ),
            headerStyle: const HeaderStyle(
                titleCentered: true, formatButtonVisible: false),
          ),
        ],
      ),
    );
  }
}
