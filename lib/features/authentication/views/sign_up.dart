import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:timely/common/background/my_background.dart';
import 'package:timely/features/authentication/controllers/sign_up_controller.dart';
import 'package:timely/features/authentication/views/login.dart';
import 'package:timely/utilities/MyValidators.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());

    return Scaffold(
        body: MyBackGround(child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// App bar
              AppBar(
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                title: const Text('Timely', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),),
          
                actions: [
                  TextButton(onPressed: () => Get.to(const LoginScreen()), child: const Text('Login'))
                ],
              ),
              const SizedBox(height: 50,),
          
              const Text('Welcome to Timely', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
              Text('Let\'s create your account', style: TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.5))),
          
              const SizedBox(height: 20,),
          
              /// Form
              Form(
                key: controller.signupFormKey,
                child: Column(
                  children: [
                    // Email
                    TextFormField(
                      controller: controller.email,
                      validator: (value) => MyValidators.validateEmail(value),
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelStyle: const TextStyle().copyWith(color: Colors.white),
                          prefixIcon: const Icon(Icons.person),
                          labelText: 'Email',
                          border: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(14))
                      ),
                    ),
          
                    const SizedBox(height: 20,),
          
                    // Password
                    Obx(
                      () => TextFormField(
                        controller: controller.password,
                        validator: (value) => MyValidators.validatePassword(value),
                        obscureText: controller.isHidden.value,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            labelStyle: const TextStyle().copyWith(color: Colors.white),
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                                icon: controller.isHidden.value ? const Icon(Iconsax.eye_slash) : const Icon(Iconsax.eye),
                                onPressed: () => controller.isHidden.value = !controller.isHidden.value
                            ),
                            labelText: 'Password',
                            border: const OutlineInputBorder().copyWith(borderRadius: BorderRadius.circular(14))
                        ),
                      ),
                    ),
          
                    const SizedBox(height: 20,),
                    // Register button
                    SizedBox(
                      width: 250,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                          onPressed: () => controller.signUp(),
                          child: const Text('Register', style: TextStyle(color: Colors.black, fontSize: 25),)),
                    ),
                  ],
                ))
              ],
          ),
        ),)
    );
  }
}
