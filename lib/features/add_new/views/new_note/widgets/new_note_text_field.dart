import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewNoteTextField extends StatelessWidget {
  const NewNoteTextField({
    super.key,
    required this.hint,
    this.font,
    this.size = 20,
    this.action = TextInputAction.newline,
    this.disallowEmptyLines = false,
    this.hintFont = FontWeight.normal,
  });

  final String hint;
  final FontWeight? font;
  final double? size;
  final TextInputAction? action;
  final bool disallowEmptyLines;
  final FontWeight? hintFont;

  @override
  Widget build(BuildContext context) {
    return TextField(

        inputFormatters: [
          if (disallowEmptyLines) FilteringTextInputFormatter.deny(RegExp(r"\n"))
        ],
        textInputAction: action,

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
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.8), fontWeight: hintFont, fontSize: size),
          border: InputBorder.none,
        )
    );
  }
}