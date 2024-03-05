import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class NewScheduleAppBar extends StatelessWidget {
  const NewScheduleAppBar({super.key,});

  @override
  Widget build(BuildContext context) {
    final isChecked = false.obs;

    return AppBar(
      backgroundColor: Colors.transparent,
      titleSpacing: -10,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_rounded, color: Colors.white, size: 30,),
          ),
        ],
      ),
      automaticallyImplyLeading: false,
      actions: [
        Transform.scale(
          scale: 1.4,
          child: Obx(
                () => Checkbox(
                side: const BorderSide(color: Colors.white),
                value: isChecked.value,
                onChanged: (value) => isChecked.value = !isChecked.value
            ),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.check, color: Colors.white, size: 30,)
        )
      ],
    );
  }
}