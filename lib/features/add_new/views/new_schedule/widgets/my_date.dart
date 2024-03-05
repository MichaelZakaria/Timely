import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class MyDate extends StatelessWidget {
  const MyDate({super.key,
    required this.text,
    required this.date,
    required this.time
  });

  final String text;
  final Rx<DateTime?> date;
  final Rx<TimeOfDay?> time;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: const TextStyle(color: Colors.white, fontSize: 16),),
        GestureDetector(
          onTap: () async {
            DateTime? theDate = await showDatePicker(
                context: context,
                firstDate: DateTime(2010),
                lastDate: DateTime(2030),
                initialDate: DateTime.now()
            );

            if(context.mounted && theDate != null) {
              TimeOfDay? theTime = await showTimePicker(context: context, initialTime: TimeOfDay.now());
              time.value = theTime;
            }

            date.value = theDate;
          },
          child: Row(
            children: [
              Obx( () => Text(
                  '${DateFormat.E('en_US').format(date.value ?? DateTime.now())}, '
                      '${DateFormat.d('en_US').format(date.value ?? DateTime.now())} '
                      '${DateFormat.MMM('en_US').format(date.value ?? DateTime.now())} '
                      '${DateFormat.y('en_US').format(date.value ?? DateTime.now())} '
                      '${time.value?.hour}:'
                      '${time.value?.minute} '
                      '${time.value?.period.toString().split('.')[1]}',
                  style: TextStyle(color: Colors.white.withOpacity(0.5)))),
              Icon(Icons.arrow_forward_ios_rounded, color: Colors.white.withOpacity(0.5),)
            ],
          ),
        )
      ],
    );
  }
}
