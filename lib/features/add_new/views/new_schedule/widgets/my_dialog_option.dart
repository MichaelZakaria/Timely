import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:timely/features/add_new/controllers/new_schedule_controller.dart';

class MyDialogOption extends StatelessWidget {
  const MyDialogOption({super.key, required this.text, required this.toChange,});

  final Rx<String> toChange;
  final String text;

  @override
  Widget build(BuildContext context) {
    final controller = NewScheduleController.instance;

    return SimpleDialogOption(
      onPressed: () {
        toChange.value = text;
        Navigator.pop(context);
      },
      child: Text(text, style: TextStyle(color: Colors.purple[900]!.withOpacity(0.8), fontSize: 15),),
    );
  }
}