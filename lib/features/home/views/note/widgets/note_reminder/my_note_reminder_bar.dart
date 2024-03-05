import 'package:flutter/material.dart';

class MyNoteReminderBar extends StatelessWidget {
  const MyNoteReminderBar({super.key,
    this.title,
    required this.content,
    required this.date
  });

  final String? title;
  final String content;
  final  String date;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xFF7E64FF).withOpacity(0.8),
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null)
            Text(
              maxLines: 1,
              '$title',
              style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis),
            ),
            Text(
                maxLines: 5,
                content,
                style: const TextStyle(color: Colors.white, fontSize: 15, overflow: TextOverflow.ellipsis),
            ),
            const SizedBox(height: 8,),
            Text(
                maxLines: 1,
                date,
                style: TextStyle(color: Colors.white.withOpacity(0.5)),
            ),
          ],
        )


      ),
    );
  }
}
