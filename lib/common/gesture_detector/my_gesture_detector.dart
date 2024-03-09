import 'package:flutter/material.dart';

class MyGestureDetector extends StatelessWidget {
  const MyGestureDetector({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 18))
    );
  }
}