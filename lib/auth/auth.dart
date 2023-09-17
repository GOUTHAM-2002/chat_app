import 'package:chat/home_page.dart';
import 'package:chat/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (ct, snp) {
            if (snp.hasData) {
              return const HomePage();
            } else {
              return LoginApp();
            }
          }),
    );
  }
}
