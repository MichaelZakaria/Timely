import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:timely/features/add_new/controllers/new_schedule_controller.dart';
import 'package:timely/features/add_new/views/new_schedule/widgets/my_dialog_option.dart';

class MyReminderDialog extends StatelessWidget {
  const MyReminderDialog({super.key,});


  @override
  Widget build(BuildContext context) {
    final controller = NewScheduleController.instance;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Reminder', style: TextStyle(color: Colors.white, fontSize: 16),),
        GestureDetector(
          onTap: () async {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(
                  title: const Text('Reminder'),
                  children: [
                    MyDialogOption(text: 'At the time of event', toChange: controller.reminder),
                    const Divider(),
                    MyDialogOption(text: 'before 5 minutes', toChange: controller.reminder),
                    const Divider(),
                    MyDialogOption(text: 'before 10 minutes', toChange: controller.reminder),
                    const Divider(),
                    MyDialogOption(text: 'before 15 minutes', toChange: controller.reminder),
                    const Divider(),
                    MyDialogOption(text: 'before 30 minutes', toChange: controller.reminder),
                    const Divider(),
                    MyDialogOption(text: 'before 1 hour', toChange: controller.reminder),
                    const Divider(),
                    MyDialogOption(text: 'before 2 hours', toChange: controller.reminder),
                    const Divider(),
                    MyDialogOption(text: 'before 1 day', toChange: controller.reminder),
                    const Divider(),
                    MyDialogOption(text: 'before 2 day', toChange: controller.reminder),
                    const Divider(),
                    MyDialogOption(text: 'before 1 week', toChange: controller.reminder),
                  ],
                );
              },
            );
          },
          child: Row(
            children: [
              Obx( () => Text(
                  controller.reminder.value,
                  style: TextStyle(color: Colors.white.withOpacity(0.5)))),
              Icon(Icons.arrow_forward_ios_rounded, color: Colors.white.withOpacity(0.5),)
            ],
          ),
        )
      ],
    );
  }
}