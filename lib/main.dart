import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'data/repositories/authentication_repository.dart';
import 'firebase_options.dart';
import 'my_app.dart';


void main() async{

  /// widgets binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// init --GetX local storage
  await GetStorage.init();

  /// await native splash until other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
          (FirebaseApp value) => Get.put(AuthenticationRepository()));

  runApp(const MyApp());
}
