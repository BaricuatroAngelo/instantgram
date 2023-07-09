import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_sign_in/github_sign_in.dart';

import '../pages/homepage.dart';

class GitHubAuth extends StatelessWidget {
  const GitHubAuth({super.key});

  Future<UserCredential?> signInWithGitHub(BuildContext context) async {
    final GitHubSignIn gitHubSignIn = GitHubSignIn(
      clientId: 'a7ad299a401a6229e8b9',
      clientSecret: 'eeaf5eaa6cbb9ccc36766ff8c92cc1030ecf0ac3',
      redirectUrl: 'https://midterm-project-instagram.firebaseapp.com/__/auth/handler',
    );

    final result = await gitHubSignIn.signIn(context);
    if (result != null) {
      final githubAuthCredential = GithubAuthProvider.credential(result.token!);
      return await FirebaseAuth.instance.signInWithCredential(githubAuthCredential);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () async {
            final userCredential = await signInWithGitHub(context);
            if (userCredential != null) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            }
          },
          icon: FaIcon(
            FontAwesomeIcons.github,
            color: Colors.black,
          ),
          label: Text("Sign In with GitHub"),
        ),
      ),
    );
  }
}
