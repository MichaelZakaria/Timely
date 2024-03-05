import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timely/features/add_new/controllers/new_schedule_controller.dart';

class MyISFullDat extends StatelessWidget {
  const MyISFullDat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = NewScheduleController.instance;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Full-day', style: TextStyle(color: Colors.white, fontSize: 15),),
        Obx(() => Switch(
            value: controller.isFullDay.value,
            onChanged: (value) => controller.isFullDay.value = !controller.isFullDay.value
        )),
      ],
    );
  }
}