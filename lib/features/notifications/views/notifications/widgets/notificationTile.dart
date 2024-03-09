import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key, required this.text, required this.date,
  });

  final String text;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(child: Text(text , style: const TextStyle(color: Colors.white, fontSize: 18),)),
            Flexible(child: Text(date , style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 15),)),
          ],
        ),
        Divider(height: 25, color: Colors.white.withOpacity(0.5),)
      ],
    );
  }
}