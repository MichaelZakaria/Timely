import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timely/bindings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,

        initialBinding: GeneralBindings(),

        /// show loader or circular progress indicator meanwhile authentication repository is deciding to show relevant screen
        home: const Scaffold(backgroundColor: Colors.black, body: Center(child: CircularProgressIndicator(color: Colors.white,),),)
    );
  }
}



