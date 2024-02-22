import 'package:flutter/material.dart';

class MySeparator extends StatelessWidget {
  const MySeparator({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          width: 2,
          decoration: BoxDecoration(
            color: Colors.purple.withOpacity(0.2),
          ),
        ),
      ]
    );
  }
}