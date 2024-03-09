import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController{
  static SettingsController get instance => Get.find();

  RxBool notificationBar = false.obs;
}