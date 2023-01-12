import 'package:flutter/material.dart';
import 'package:login/size.dart';
import 'package:login/components/custom_text_form_field.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); //1. global Key

  @override
  Widget build(BuildContext context) {
    return Form(
      // 2. global Key를 Form 태그에 연결하여 해당 key로 Form의 상태를 관리할 수 있음
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField("Email"),
          SizedBox(height: medium_gap),
          CustomTextFormField("Password"),
          SizedBox(height: large_gap),
          TextButton(
              onPressed: () {
                // variable! 표시 : non - nullable로 변경해주는 것
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, "/home");
                }
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
