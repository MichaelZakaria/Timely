import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: const Text('Timely', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications, color: Colors.white,)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert, color: Colors.white,))
        ],
      ),
    );
  }
}