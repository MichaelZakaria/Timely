import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timely/common/app_bar/MyAppbar.dart';
import 'package:timely/common/background/my_background.dart';
import 'package:timely/common/header/my_header.dart';
import 'package:timely/common/text_input/my_text_input.dart';
import 'package:timely/common/toggle_tile/my_toggle_tile.dart';
import 'package:timely/features/add_new/controllers/new_schedule_controller.dart';
import 'package:timely/features/add_new/views/new_schedule/widgets/my_date.dart';
import 'package:timely/features/add_new/views/new_schedule/widgets/my_reminder_dialog.dart';
import 'package:timely/features/add_new/views/new_schedule/widgets/my_repeat_dialog.dart';

class AddNewSchedule extends StatelessWidget {
  const AddNewSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NewScheduleController());

    return Scaffold(
      body: MyBackGround(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Appbar
              const MyAppBar(checkbox: true, icon_2: Icons.check),
              const SizedBox(height: 25,),
              // Header
              const MyHeader(text: 'Schedule',),
              const SizedBox(height: 25,),
              // Title Text Field
              const MyTextInput(hintText: 'Title', height: 100,),
              const SizedBox(height: 15,),
              // Is full day toggle
              MyToggleTile(text: 'Full-day', toCheck: controller.isFullDay),
              const SizedBox(height: 15,),
              // Start from
              MyDate(text: 'Start from', date: controller.startDate, time: controller.startTime,),
              const SizedBox(height: 25,),
              // Finish
              MyDate(text: 'Finish', date: controller.finishDate, time: controller.finishTime,),
              const SizedBox(height: 25,),
              // Repeat
              const MyRepeatDialog(),
              const SizedBox(height: 25,),
              // Reminder
              const MyReminderDialog(),
              const SizedBox(height: 25,),
              // Place Text Field
              const MyTextInput(hintText: 'Place', height: 100,),
              const SizedBox(height: 25,),
              // Notes Text Field
              const MyTextInput(hintText: 'Notes', height: 250,),
              const SizedBox(height: 25,),
            ],
          )
        ),
      ),
    );
  }
}










