import 'package:flutter/material.dart';
import 'package:timely/common/app_bar/MyAppbar.dart';
import 'package:timely/features/add_new/views/new_note/widgets/new_note_text_field.dart';

class AddNewNote extends StatelessWidget {
  const AddNewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7E64FF),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(18, 30, 18, 0),
          child: const Column(
            children: [
              // App bar
              MyAppBar(icon_1: Icons.push_pin, angle_1: 120, icon_2: Icons.more_vert),
              SizedBox(height: 20,),
              // Title text field
              NewNoteTextField(hint: 'Title', font: FontWeight.bold, size: 24,
                  action: TextInputAction.next, disallowEmptyLines: true, hintFont: FontWeight.bold
              ),
              // Your Text text field
              NewNoteTextField(hint: 'Your text',),
            ],
          ),
        ),
      ),
    );
  }
}


