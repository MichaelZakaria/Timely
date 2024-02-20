import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:timely/features/Home.dart';
import 'package:timely/features/authentication/login.dart';
import 'package:timely/my_app.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();


  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// Function to show relevant screen
  screenRedirect() async{
    final user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      Get.offAll(const HomeScreen());
    } else {
      // Local storage
      GetStorage().writeIfNull('IsFirstTime', true);
      // Check if it's the user's first time
      GetStorage().read('IsFirstTime') != true ? Get.offAll(const LoginScreen()) : Get.offAll(const MyApp());
    }
  }

  /// Register with email and password
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
    try {
      return await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw 'FirebaseAuthException: $e';
    } on FirebaseException catch (e) {
      throw 'FirebaseException $e';
    } on FormatException catch (e) {
      throw 'FormatException: $e';
    } on PlatformException catch (e) {
      throw 'PlatformException: $e';
    } catch (e) {
      throw 'Something went wrong. Pleas try again';
    }
  }

  /// Login with email and password
  Future<UserCredential> loginWithEmailAndPassword(String email, String password) async {
    try {
      return await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw 'FirebaseAuthException: $e';
    } on FirebaseException catch (e) {
      throw 'FirebaseException $e';
    } on FormatException catch (e) {
      throw 'FormatException: $e';
    } on PlatformException catch (e) {
      throw 'PlatformException: $e';
    } catch (e) {
      throw 'Something went wrong. Pleas try again';
    }
  }

  /// Logout
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(const LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw 'FirebaseAuthException: $e';
    } on FirebaseException catch (e) {
      throw 'FirebaseException $e';
    } on FormatException catch (e) {
      throw 'FormatException: $e';
    } on PlatformException catch (e) {
      throw 'PlatformException: $e';
    } catch (e) {
      throw 'Something went wrong. Pleas try again';
    }
  }
}