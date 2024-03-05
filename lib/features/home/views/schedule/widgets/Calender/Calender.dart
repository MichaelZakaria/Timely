import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCalender extends StatelessWidget {
  const MyCalender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: TableCalendar(
          // To scroll the page vertically
          availableGestures: AvailableGestures.horizontalSwipe,

          // Header style
          headerStyle: const HeaderStyle(
            formatButtonVisible: false,
            titleTextStyle:
            TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            titleCentered: true,
            leftChevronVisible: false,
            rightChevronVisible: false,
            headerMargin: EdgeInsets.only(bottom: 15),
          ),
        
          // Set weekend days
          weekendDays: const [DateTime.sunday],
        
          // Calender style
          calendarStyle: CalendarStyle(
            defaultTextStyle: const TextStyle(color: Colors.white),
            outsideTextStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
            weekendTextStyle: TextStyle(color: Colors.red.withOpacity(0.8)),
          ),
        
          // Days of the week style
          daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
              weekendStyle: TextStyle(color: Colors.red.withOpacity(0.8), fontWeight: FontWeight.w400, fontSize: 15)
          ),
        
          // Dates
          focusedDay: DateTime.now(),
          firstDay: DateTime.utc(2010, 1, 1),
          lastDay: DateTime.utc(2030, 12, 31),
        ),
      ),
    );
  }
}