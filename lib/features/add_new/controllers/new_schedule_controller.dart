import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewScheduleController extends GetxController{
  static NewScheduleController get instance => Get.find();

  RxBool isFullDay = false.obs;

  Rx<DateTime?> startDate = DateTime.now().obs;
  Rx<TimeOfDay?> startTime = TimeOfDay.now().obs;

  Rx<DateTime?> finishDate = DateTime.now().obs;
  Rx<TimeOfDay?> finishTime = TimeOfDay.now().obs;

  Rx<String> repeat = 'One Time'.obs;

  Rx<String> reminder = 'Before 15 minutes'.obs;
}