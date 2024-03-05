import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Timely', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.notifications, color: Colors.white,)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert, color: Colors.white,))
            ],
          )
        ],
      )



    );
  }
}