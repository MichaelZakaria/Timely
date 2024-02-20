import 'package:flutter/material.dart';
import 'package:timely/data/repositories/authentication_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home'),
            const SizedBox(height: 20,),
            TextButton(onPressed: () => AuthenticationRepository.instance.logout(), child: Text('Log out', style: TextStyle(color: Colors.red),))
          ],
        )
      ),
    );
  }
}
