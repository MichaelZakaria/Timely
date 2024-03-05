import 'package:flutter/material.dart';
import 'package:timely/data/repositories/authentication_repository.dart';

class AddNewNote extends StatelessWidget {
  const AddNewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),
          const Text('Home'),
          const SizedBox(height: 20,),
          TextButton(
              onPressed: () => AuthenticationRepository.instance.logout(),
              child: const Text('Log out', style: TextStyle(color: Colors.red),)
          ),
        ],
      ),
    );
  }
}
