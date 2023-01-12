import 'package:flutter/material.dart';
import 'package:login/components/logo.dart';
import 'package:login/size.dart';
import 'package:login/components/custom_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: xlarge_gap),
            Logo(title: "Login"),
            SizedBox(height: large_gap),
            CustomForm(),
          ],
        ),
      ),
    );
  }
}
