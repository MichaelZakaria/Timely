import 'package:flutter/material.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput({
    super.key,
    required this.hintText,
    this.maxLines,
    this.height,
  });

  final String hintText;
  final int? maxLines;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        constraints: BoxConstraints(
          maxHeight: height ?? 48
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFCCC2FE),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              hintText: hintText,
              contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            )
        ),
      ),
    );
  }
}