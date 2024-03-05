import 'package:flutter/material.dart';
import 'package:timely/features/home/views/schedule/widgets/schedule_reminder/my_reminder_bar.dart';
import 'package:timely/features/home/views/schedule/widgets/shapes/chain.dart';
import 'package:timely/features/home/views/schedule/widgets/shapes/separator.dart';


class MyCompleteSchedule extends StatelessWidget {
  const MyCompleteSchedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    itemBuilder: (_, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                const MyChain(),
                                if (index != 3 - 1)
                                  const MySeparator(height: 120 * 2,)
                              ],
                            ),

                            const SizedBox(width: 10,),

                            Flexible(
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemCount: 2,
                                  itemBuilder: (_, index) => const Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child: MyReminderBar(),
                                  )
                              ),
                            ),//const MySchedule()
                          ],
                        )
                    ), separatorBuilder: (_, int index) => const SizedBox(height: 0,) ,
                  ),
                ),
              ),
            ],
          ),
        ]
    );
  }
}