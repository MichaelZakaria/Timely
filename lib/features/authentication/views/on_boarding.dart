import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:timely/common/background/my_background.dart';
import 'package:timely/features/authentication/views/login.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBackGround(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Title
          const Expanded(child: Center(child: Text('Timely', style: TextStyle(fontSize: 65, color: Colors.white, fontWeight: FontWeight.bold),))),
          /// Subtitle
          const Expanded(child: Center(child: Text('Make yourself on time', style: TextStyle(fontSize: 30, color: Colors.white),))),
          /// Start button
          Expanded(child: Center(child: SizedBox(
            width: 250,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
                onPressed: () {
                  GetStorage().write('IsFirstTime', false);
                  Get.offAll(const LoginScreen());
                },
                child: const Text('Start', style: TextStyle(color: Colors.black, fontSize: 25),)),
          )))
        ],
      )),
    );
  }
}