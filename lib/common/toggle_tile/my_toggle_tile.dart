import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class MyToggleTile extends StatelessWidget {
  const MyToggleTile({
    super.key,
    required this.text,
    this.size = 15,
    required this.toCheck,
  });

  final String text;
  final double? size;
  final Rx<bool> toCheck;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: TextStyle(color: Colors.white, fontSize: size),),
        Obx(() => Switch(
            value: toCheck.value,
            onChanged: (value) => toCheck.value = !toCheck.value
        )),
      ],
    );
  }
}