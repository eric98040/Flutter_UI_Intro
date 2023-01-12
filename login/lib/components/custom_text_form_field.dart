import 'package:flutter/material.dart';
import 'package:login/size.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  const CustomTextFormField(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(height: small_gap),
        TextFormField(
          // 1. 느낌표는 null이 절대 아니다 라고 컴파일러에게 알려주는 것 = !는 non-nullable
          validator: (value) => value!.isEmpty
              ? "Please enter some text"
              : null, // 1. 값이 없으면 Please enter some text라고 경고 화면 표시
          obscureText:
              // 2. 해당 TextFormField가 비밀번호 입력 양식이면 **** 처리 해주기
              text == "Password" ? true : false,
          decoration: InputDecoration(
            hintText: "Enter $text",
            enabledBorder: OutlineInputBorder(
              // 3. 기본 TextFormField
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              // 4. 손가락 터치시 TextFormField 디자인
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              // 5. 에러 발생시 TextFormField 디자인
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              // 6. 에러가 발생 후 손가락을 터치했을 때 TextFormField 디자인
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        )
      ],
    );
  }
}
