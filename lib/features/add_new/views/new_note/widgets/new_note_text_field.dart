import 'package:flutter/material.dart';

class NewNoteTextField extends StatelessWidget {
  const NewNoteTextField({
    super.key,
    required this.hint,
    this.font,
    this.size = 20,
  });

  final String hint;
  final FontWeight? font;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return TextField(
        textCapitalization: TextCapitalization.sentences,
        keyboardType: TextInputType.multiline,
        maxLines: null,
        autocorrect: true,
        style: TextStyle(
            color: Colors.white, fontWeight: font, fontSize: size,
            decoration: TextDecoration.none, decorationColor: Colors.white
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.bold, fontSize: size),
          border: InputBorder.none,
        )
    );
  }
}