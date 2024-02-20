import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:timely/common/background/my_background.dart';
import 'package:timely/features/authentication/controllers/login_controller.dart';
import 'package:timely/features/authentication/sign_up.dart';
import 'package:timely/utilities/MyValidators.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

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
                TextButton(onPressed: () => Get.to(const SignUpScreen()), child: const Text('Don\'t have an account?'))
              ],
            ),
            const SizedBox(height: 50,),
            /// Form
            Form(
                key: controller.loginFormKey,
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
                        validator: (value) => MyValidators.validateEmptyField(value, 'Password'),
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
                    // Login button
                    SizedBox(
                      width: 250,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                          onPressed: () => controller.login(),
                          child: const Text('Login', style: TextStyle(color: Colors.black, fontSize: 25),)),
                    ),
                  ],
                ))
          ],
        ),
      ),)
    );
  }
}
