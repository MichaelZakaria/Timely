import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        
        /// show loader or circular progress indicator meanwhile authentication repository is deciding to show relevant screen
        home: Scaffold(backgroundColor: Colors.black, body: Center(child: CircularProgressIndicator(color: Colors.white,),),)
    );
  }
}



