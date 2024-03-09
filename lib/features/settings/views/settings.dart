import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timely/common/app_bar/MyAppbar.dart';
import 'package:timely/common/background/my_background.dart';
import 'package:timely/common/gesture_detector/my_gesture_detector.dart';
import 'package:timely/common/header/my_header.dart';
import 'package:timely/common/toggle_tile/my_toggle_tile.dart';
import 'package:timely/data/repositories/authentication_repository.dart';
import 'package:timely/features/settings/controllers/settings_controller.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SettingsController());

    return Scaffold(
      body: MyBackGround(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AppBar
              const MyAppBar(title: 'Settings', titleSize: 22),
              const SizedBox(height: 30),
              // Header
              const MyHeader(text: 'Notifications'),
              Divider(color: Colors.white.withOpacity(0.5),),
              const SizedBox(height: 20),
              // Audio Text button
              const MyGestureDetector(text: 'Audio'),
              const SizedBox(height: 20),
              // Toggle for notification bar
              MyToggleTile(text: 'Notification Bar', size: 18, toCheck: controller.notificationBar),
              const SizedBox(height: 50),
              // Header
              const MyHeader(text: 'Extras'),
              Divider(color: Colors.white.withOpacity(0.5),),
              const SizedBox(height: 20),
              // Help Text button
              const MyGestureDetector(text: 'Help'),
              const SizedBox(height: 20),
              // About Text button
              const MyGestureDetector(text: 'About'),
              const SizedBox(height: 20),
              // log out
              const SizedBox(height: 100,),
              Center(
                child: TextButton(
                    onPressed: () => AuthenticationRepository.instance.logout(),
                    child: Text('Log out', style: TextStyle(color: Colors.red[600], fontSize: 18),)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
