import 'package:flutter/material.dart';
import 'package:timely/common/add_button/my_add_button.dart';
import 'package:timely/common/app_bar/MyAppbar.dart';
import 'package:timely/common/background/my_background.dart';
import 'package:timely/common/header/my_header.dart';
import 'package:timely/common/scheduleNote/my_schedule_note.dart';
import 'package:timely/features/home/views/schedule/widgets/Calender/Calender.dart';
import 'package:timely/features/home/views/schedule/widgets/schedule_reminder/my_complete_schedule.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MyBackGround(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyAppBar(),
              MyScheduleNote(),
              SizedBox(height: 20,),
              MyCalender(),
              SizedBox(height: 35,),
              MyHeader(),
              SizedBox(height: 20,),
              MyCompleteSchedule(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF7E64FF),
        shape: const CircleBorder(),
        onPressed: () => MyAddButton.openDialog(),
        child: const Icon(Icons.add, size: 35, color: Colors.white,),
      ),
    );
  }
}





