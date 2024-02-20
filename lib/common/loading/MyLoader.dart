import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLoader {
  static void openLoadingDialog() {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
            canPop: false,
            child: Container(
              color: Colors.black.withOpacity(0.8),
              width: double.infinity,
              height: double.infinity,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(strokeWidth: 8),
                ],
              ),
            )
        )
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}