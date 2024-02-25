import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:timely/features/home/controllers/note_list_controller.dart';
import 'package:timely/features/home/views/note/widgets/note_reminder/my_note_reminder_bar.dart';

class NotesVisible extends StatelessWidget {
  const NotesVisible({super.key,});


  @override
  Widget build(BuildContext context) {
    final controller = NoteListController.instance;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Obx(
                () => MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.separated(

                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,

                                separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 08,),

                                itemCount: controller.noteList.length,
                                itemBuilder: (context, index) => MyNoteReminderBar(
                  title: controller.noteList[index].title,
                  content: controller.noteList[index].content,
                  date: controller.noteList[index].date,
                                ),

                              ),
                ),
          ),
        ),
      ],
    );
  }
}