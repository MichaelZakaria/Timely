import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timely/features/home/controllers/my_schedule_note_controller.dart';
import 'package:timely/features/home/views/note/note.dart';
import 'package:timely/features/home/views/schedule/schedule.dart';

class MyScheduleNote extends StatelessWidget {
  const MyScheduleNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = ScheduleNoteController.instance;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.purple[900]!.withOpacity(0.6),
          shape: BoxShape.rectangle,
          border: Border.all(width: 5, color: Colors.purple[900]!.withOpacity(0),),
          borderRadius: BorderRadius.circular(8)
      ),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () => controller.isClicked.value ? controller.isClicked.value = true 
                      : {controller.isClicked.value = true, Get.off(const ScheduleScreen())},
                  style: TextButton.styleFrom(
                      backgroundColor: controller.isClicked.value ? Colors.black : Colors.transparent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                  child: const Text('Schedule', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),)),
            ),


            Expanded(
              child: TextButton(
                  onPressed: () => controller.isClicked.value 
                      ? {controller.isClicked.value = false, Get.off(const NoteScreen())}
                      : controller.isClicked.value = false,
                  style: TextButton.styleFrom(
                      backgroundColor: controller.isClicked.value == false ? Colors.black : Colors.transparent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                  child: const Text('Note', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),)),
            ),
          ],
        ),
      ),
    );
  }
}