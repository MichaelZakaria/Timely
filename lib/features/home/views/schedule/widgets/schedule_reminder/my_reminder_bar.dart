import 'package:flutter/material.dart';

class MyReminderBar extends StatelessWidget {
  const MyReminderBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      width: double.infinity,
      decoration: BoxDecoration(color: const Color(0xFF7E64FF).withOpacity(0.5), borderRadius: BorderRadius.circular(8)),
      child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dinner with Amani', style: TextStyle(color: Colors.white,fontSize: 16),),
                Checkbox(value: true, onChanged: null)
              ],
            ),

            Divider(
              color: const Color(0xFF7E64FF).withOpacity(0.6),
              height: 0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(flex: 2,child: Text('Time', style: TextStyle(color: Colors.white),)),
                Expanded(flex: 7, child: Text('08:88 pm', style: TextStyle(color: Colors.white.withOpacity(0.5)),))
              ],
            ),
            Row(
              children: [
                const Expanded(flex: 2, child: Text('Place', style: TextStyle(color: Colors.white),)),
                Expanded(flex: 7, child: Text('Amani\'s house', style: TextStyle(color: Colors.white.withOpacity(0.5)),))
              ],
            ),
            Row(
              children: [
                const Expanded(flex: 2, child: Text('Notes', style: TextStyle(color: Colors.white),)),
                Expanded(flex: 7, child: Text('Bring her flowers', style: TextStyle(color: Colors.white.withOpacity(0.5)),))
              ],
            )
          ]
      ),
    );
  }
}