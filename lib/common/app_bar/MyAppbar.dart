import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
    this.back = true,
    this.title,
    this.icon_1,
    this.angle_1,
    this.icon_2,
    this.checkbox = false,
    this.toDo_1,
    this.toDo_2,
    this.titleSize = 32,
  });

  final bool? back;
  final String? title;
  final double? titleSize;
  final IconData? icon_1;
  final double? angle_1;
  final IconData? icon_2;
  final bool? checkbox;
  final VoidCallback? toDo_1;
  final VoidCallback? toDo_2;

  @override
  Widget build(BuildContext context) {
    final isChecked = false.obs;

    return Container(
      padding: const EdgeInsets.only(top: TextSelectionToolbar.kToolbarContentDistanceBelow + 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [

              if (back!)
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.arrow_back_rounded, color: Colors.white, size: 30,),
                ),

              if (back! && title != null)
                const SizedBox(width: 8),

              if (title != null)
                Text(title!, style: TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold, color: Colors.white),),
            ],
          ),
          Row(
            children: [

              if (checkbox!)
                Transform.scale(
                  scale: 1.4,
                  child: Obx(
                        () => Checkbox(
                        side: const BorderSide(color: Colors.white),
                        value: isChecked.value,
                        onChanged: (value) => isChecked.value = !isChecked.value
                    ),
                  ),
                ),

              if (icon_1 != null)
                Transform.rotate(
                  angle: angle_1 ?? 0,
                  child: IconButton(
                      onPressed: toDo_1,
                      icon: Icon(icon_1, color: Colors.white, size: 30,)
                  ),
                ),

              if (checkbox! || icon_1 != null)
                const SizedBox(width: 10,),

              if (icon_2 != null)
                GestureDetector(
                    onTap: toDo_2,
                    child: Icon(icon_2, color: Colors.white, size: 30,)
                )
            ],
          )
        ],
      ),
    );
  }
}