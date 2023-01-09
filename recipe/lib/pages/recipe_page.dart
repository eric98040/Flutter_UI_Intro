// 레시피 앱 페이지 기본 코딩하기

import 'package:flutter/material.dart';
import 'package:recipe/components/recipe_list_item.dart';
import 'package:recipe/components/recipe_menu.dart';
import 'package:recipe/components/recipe_title.dart';
import 'package:flutter/cupertino.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 1. 배경색 white로 설정
      appBar: _buildRecipeAppBar(), // 2. 비어있는 AppBar 연결해두기
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20), // 3. 수평으로 여백 주기
        child: ListView(
          // 4. 위에서 아래로 내려가는 구조이기 때문에 Column 위젯 사용
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made Coffee"),
            RecipeListItem("burger", "Made Burgger"),
            RecipeListItem("pizza", "Made Pizza"),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white, // Appbar 배경색
      elevation: 1.0, // Appbar의 그림자 효과 조정
      actions: [
        Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
