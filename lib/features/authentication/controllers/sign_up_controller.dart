import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:timely/common/loading/MyLoader.dart';
import 'package:timely/common/snack_bars/my_snack_bars.dart';
import 'package:timely/data/repositories/authentication_repository.dart';
import 'package:timely/features/authentication/login.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  /// Variables
  final isHidden = false.obs;
  final email = TextEditingController();
  final password =TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  /// SignUp
  Future<void> signUp() async {
    try {
      // start loading
      MyLoader.openLoadingDialog();

      // Form validation
      if (!signupFormKey.currentState!.validate()) {
        MyLoader.stopLoading();
        return;
      }

      // Register User in firebase authentication & save user data
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
          email.text.trim(), password.text.trim());

      // Remove Loader
      MyLoader.stopLoading();

      // Show success message
      MySnackBars.successSnackBar(title: 'Congratulations', message: 'Your account has been created');

      // Move to login screen
      Get.offAll(() => const LoginScreen());

    } catch (e) {
      // Stop the loader
      MyLoader.stopLoading();

      // Show the error
      MySnackBars.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}