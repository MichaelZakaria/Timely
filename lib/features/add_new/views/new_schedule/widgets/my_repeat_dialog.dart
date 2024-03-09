import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:timely/features/add_new/controllers/new_schedule_controller.dart';
import 'package:timely/features/add_new/views/new_schedule/widgets/my_dialog_option.dart';

class MyRepeatDialog extends StatelessWidget {
  const MyRepeatDialog({super.key,});

  @override
  Widget build(BuildContext context) {
    final controller = NewScheduleController.instance;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Repeat', style: TextStyle(color: Colors.white, fontSize: 18),),
        GestureDetector(
          onTap: () async {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(
                  title: const Center(child: Text('Repeat', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side:const BorderSide(width: 5, color: Colors.black26)
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  children: [
                    MyDialogOption(text: 'One Time', toChange: controller.repeat,),
                    const Divider(),
                    MyDialogOption(text: 'Every Day', toChange: controller.repeat),
                    const Divider(),
                    MyDialogOption(text: 'Every Week', toChange: controller.repeat),
                    const Divider(),
                    MyDialogOption(text: 'Every 2 Weeks', toChange: controller.repeat),
                    const Divider(),
                    MyDialogOption(text: 'Every Month', toChange: controller.repeat),
                    const Divider(),
                    MyDialogOption(text: 'Every Year', toChange: controller.repeat),
                    const Divider(thickness: 20, height: 30,),
                    MyDialogOption(text: 'Custom', toChange: controller.repeat),
                  ],
                );
              },
            );
          },
          child: Row(
            children: [
              Obx( () => Text(
                  controller.repeat.value,
                  style: TextStyle(color: Colors.white.withOpacity(0.5)))),
              Icon(Icons.arrow_forward_ios_rounded, color: Colors.white.withOpacity(0.5),)
            ],
          ),
        )
      ],
    );
  }
}

