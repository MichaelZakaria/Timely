import 'package:flutter/material.dart';

class MyBackGround extends StatelessWidget {
  const MyBackGround({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Container(
        color: Colors.black,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.2,0.6,0.9],
              colors: [
                Colors.black,
                Colors.purple[900]!.withOpacity(0.5),
                Colors.black,
              ]
            )
          ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: child,
            )
        ),
      ),
    );
  }
}