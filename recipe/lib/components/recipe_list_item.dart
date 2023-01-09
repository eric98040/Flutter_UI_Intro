import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  const RecipeListItem(this.imageName, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            // 특정 종횡비로 자식 크기를 조정하는 위젯
            // 먼저 레이아웃 제약에서 허용하는 가장 큰 너비를 시도
            aspectRatio: 2 / 1,
            child: ClipRRect(
              // 모서리에 곡선을 주는 위젯 (기존 위젯에 shape, decoration 속성이 없다면)
              // container 같은 경우에는 decoration 속성이 있기 때문에 Clip(자르다), R(round), Rect(사각형)을 사용할 필요가 없음
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/$imageName.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            " Have you ever made your own $title? Once you've tried a homemade $title, you'll never go back.",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
