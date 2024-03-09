import 'package:flutter/material.dart';
import 'package:timely/common/app_bar/MyAppbar.dart';
import 'package:timely/common/background/my_background.dart';
import 'package:timely/features/notifications/views/notifications/widgets/notificationTile.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: MyBackGround(
       child: SingleChildScrollView(
         child: Column(
           children: [
             const MyAppBar(
               title: 'Notifications', titleSize: 22,
             ),
             ListView.builder(
                 physics: const NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                 itemBuilder: (_, index) => const NotificationTile(text: 'Dinner with Amani', date: '20 Sep 2021 8:00 PM',),
                 itemCount: 4
             )
           ],
         ),
       ),
     ),
    );
  }
}


