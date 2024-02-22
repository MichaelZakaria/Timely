import 'package:flutter/material.dart';
import 'package:timely/common/app_bar/MyAppbar.dart';
import 'package:timely/common/background/my_background.dart';
import 'package:timely/common/header/my_header.dart';
import 'package:timely/common/scheduleNote/my_schedule_note.dart';
import 'package:timely/data/repositories/authentication_repository.dart';
import 'package:timely/features/home/views/schedule/widgets/Calender/Calender.dart';
import 'package:timely/features/home/views/schedule/widgets/schedule_reminder/my_complete_schedule.dart';

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
              const MyCalender(),
              const SizedBox(height: 35,),
              const MyHeader(),
              const MyCompleteSchedule(),


              const SizedBox(height: 20,),
              const Text('Home'),
              const SizedBox(height: 20,),
              TextButton(
                  onPressed: () => AuthenticationRepository.instance.logout(),
                  child: const Text('Log out', style: TextStyle(color: Colors.red),)
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF7E64FF),
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.add, size: 35, color: Colors.white,),
      ),
    );
  }
}





