import 'package:get/get.dart';
import 'package:timely/features/home/controllers/my_schedule_note_controller.dart';
import 'package:timely/features/home/controllers/note_list_controller.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ScheduleNoteController());
    Get.put(NoteListController());
  }

}