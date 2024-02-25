import 'package:get/get.dart';
import 'package:timely/features/home/models/note_model.dart';
import 'package:timely/temp_data/notes.dart';

class NoteListController extends GetxController {
  static NoteListController get instance => Get.find();

  RxList<NoteModel> noteList = <NoteModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    noteList.addAll(notes);
  }
}