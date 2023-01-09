import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // debug 배너 해제
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      // 핸드폰 기기별로 조금씩 다른 상태바(StatusBar)영역에 padding을 넣어줌
      child: Column(
        children: [
          Padding(
            // Padding : 자식 위젯 주위에 빈 공간을 만들어줌
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Women",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Kids",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Shoes",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Bag",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Expanded : 남은 위젯을 공간을 확장하여 공간을 채울 수 있도록 하는 위젯
          Expanded(child: Image.asset("assets/bag.jpeg", fit: BoxFit.cover)),
          // Image 위젯을 사용할 때는 fit 속성을 이용해야 함
          //(Boxfit.contain : 원본사진의 가로세로 비율 변화 없음)
          //(Boxfit.fill : 원본사진의 가로세로 비율 무시하고 지정한 영역에 사진을 맞춤)
          //(Boxfit.cover : 원본사진의 가로세로 비율을 유지한 채로 지정한 영역에 사진을 맞춤, 사진의 비율 유지가능 / 사진이 지정한 크기를 벗어나면 짤림)
          SizedBox(height: 2), // SizedBox : width, height 크기를 가지는 '빈' 상자
          Expanded(child: Image.asset("assets/cloth.jpeg", fit: BoxFit.cover)),
        ],
      ),
    ));
  }
}
