import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewNoteAppBar extends StatelessWidget {
  const NewNoteAppBar({super.key});

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
          Transform.rotate(
            angle: 120,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.push_pin, color: Colors.white, size: 30,)
            ),
          ),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.white, size: 30,)
        )
      ],
    );
  }
}
