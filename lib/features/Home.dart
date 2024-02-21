import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:timely/common/app_bar/MyAppbar.dart';
import 'package:timely/common/background/my_background.dart';
import 'package:timely/common/scheduleNote/my_schedule_note.dart';
import 'package:timely/data/repositories/authentication_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBackGround(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyAppBar(),
              const MyScheduleNote(),
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Center(
                  child: TableCalendar(
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
                      weekdayStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15)
                    ),

                    // Dates
                    focusedDay: DateTime.now(),
                    firstDay: DateTime.utc(2010, 1, 1),
                    lastDay: DateTime.utc(2030, 12, 31),
                  ),
                ),
              ),

              const SizedBox(height: 20,),
              const Text('Home'),
              const SizedBox(height: 20,),
              TextButton(onPressed: () => AuthenticationRepository.instance.logout(), child: const Text('Log out', style: TextStyle(color: Colors.red),))
            ],
          ),
        ),
      ),
    );
  }
}



