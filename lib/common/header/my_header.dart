import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text('Schedule', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),))
      ],
    );
  }
}