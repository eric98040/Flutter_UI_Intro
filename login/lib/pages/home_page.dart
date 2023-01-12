import 'package:flutter/material.dart';
import 'package:login/components/logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 200),
            Logo(title: "Care Soft"),
            SizedBox(height: 50),
            TextButton(
                onPressed: () {
                  Navigator.pop(context); // 화면 stack 제거
                },
                child: Text("Get Started"))
          ],
        ),
      ),
    );
  }
}
