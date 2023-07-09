import 'package:flutter/material.dart';
import 'package:instagram_clone_app/auth/github.dart';

import '../auth/google.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 190,
                height: 40,
                child: GoogleSignInButton(),
              ),
              SizedBox(
                width: 200,
                height: 200,
                child: GitHubAuth(),
              )
            ],
          ),
        ],
      )
    );
  }
}