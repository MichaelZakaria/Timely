import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timely/common/loading/MyLoader.dart';
import 'package:timely/common/snack_bars/my_snack_bars.dart';
import 'package:timely/data/repositories/authentication_repository.dart';
import 'package:timely/features/home/views/schedule/schedule.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  /// Variables
  final isHidden = false.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  /// Login
  Future<void> login() async {
    try {
      // Start loader
      MyLoader.openLoadingDialog();

      // Form validation
      if(!loginFormKey.currentState!.validate()) {
        MyLoader.stopLoading();
        return;
      }

      // Login user using email and password
      final userCredential = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Stop Loader
      MyLoader.stopLoading();

      // Show success message
      MySnackBars.successSnackBar(title: 'Welcome back', message: 'Your schedule awaits');

      // Go to Home Screen
      Get.offAll(() => const HomeScreen());


    } catch (e) {
      // Stop loader
      MyLoader.stopLoading();

      // Show error message
      MySnackBars.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}