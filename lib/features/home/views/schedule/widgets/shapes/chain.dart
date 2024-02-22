import 'package:flutter/material.dart';

class MyChain extends StatelessWidget {
  const MyChain({
    super.key,
    //required this.isTrue,
  });

  //final bool isTrue;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.purple.withOpacity(0.2),
              border: Border.all(width: 2, color: Colors.purple.withOpacity(0.5)),
            ),
            child: const Center(child: Text('26', style: TextStyle(color: Colors.white,fontSize: 15,),)),
          ),
        ]
    );
  }
}

