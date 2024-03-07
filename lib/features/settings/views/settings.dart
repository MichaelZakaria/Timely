import 'package:flutter/material.dart';
import 'package:timely/data/repositories/authentication_repository.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 150,),
            const Text('Home'),
            const SizedBox(height: 20,),
            TextButton(
                onPressed: () => AuthenticationRepository.instance.logout(),
                child: const Text('Log out', style: TextStyle(color: Colors.red),)
            ),
          ],
        ),
      ),
    );
  }
}
