import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        // 1. Menu item들의 방향이 수평방향이므로
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildMenuItem(Icons.food_bank, 'All'), // 2. 재사용
          _buildMenuItem(Icons.emoji_food_beverage, 'Coffee'), // 3. 재사용
          _buildMenuItem(Icons.fastfood, 'Burger'), // 4. 재사용
          _buildMenuItem(Icons.local_pizza, 'Pizza'), // 5. 재사용
        ],
      ),
    );
  }

// 6. 재사용할 수 잇는 함수로 만든다.
// 7. Widget은 모든 위젯의 부모이기 때문에 함수 리턴 타입은 Widget으로 하는 것이 좋다.

  Widget _buildMenuItem(IconData mIcon, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            mIcon,
            color: Colors.redAccent,
            size: 30,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black87),
          )
        ],
      ),
    );
  }
}
