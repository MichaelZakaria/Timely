import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Schedule', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),)
      ],
    );
  }
}