import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({
    super.key,
    required this.text,
    this.size = 20,
    this.font = FontWeight.w400,
  });

  final String text;
  final double? size;
  final FontWeight? font;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(color: Colors.white, fontSize: size, fontWeight: font),)
      ],
    );
  }
}