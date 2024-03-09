import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timely/common/add_button/my_add_button.dart';
import 'package:timely/common/app_bar/MyAppbar.dart';
import 'package:timely/common/background/my_background.dart';
import 'package:timely/common/scheduleNote/my_schedule_note.dart';
import 'package:timely/features/home/views/note/widgets/note_reminder/notes_visible.dart';
import 'package:timely/features/home/views/note/widgets/search/my_search_bar.dart';
import 'package:timely/features/notifications/views/notifications/notifications.dart';
import 'package:timely/features/settings/views/settings.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBackGround(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyAppBar(back: false, title: 'Timely', icon_1: Icons.notifications, icon_2: Icons.more_vert,
                  toDo_2: () => Get.to(const Settings()) , toDo_1: () =>  Get.to(const Notifications()),
              ),
              const SizedBox(height: 25,),
              const MyScheduleNote(),
              const SizedBox(height: 20,),
              const MySearchBar(),
              const SizedBox(height: 20,),
              const NotesVisible(),
              const SizedBox(height: 25,),
            ],
          )
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