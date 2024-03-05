import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timely/common/add_button/my_add_button.dart';
import 'package:timely/common/app_bar/MyAppbar.dart';
import 'package:timely/common/background/my_background.dart';
import 'package:timely/common/scheduleNote/my_schedule_note.dart';
import 'package:timely/data/repositories/authentication_repository.dart';
import 'package:timely/features/home/views/note/widgets/note_reminder/notes_visible.dart';
import 'package:timely/features/home/views/note/widgets/search/my_search_bar.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: const MyBackGround(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyAppBar(),
              SizedBox(height: 25,),
              MyScheduleNote(),
              SizedBox(height: 20,),
              MySearchBar(),
              SizedBox(height: 20,),
              NotesVisible(),
              SizedBox(height: 20,),
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