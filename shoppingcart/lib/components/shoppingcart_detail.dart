import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shoppingcart/constants.dart';

class ShoppingCartDetail extends StatelessWidget {
  const ShoppingCartDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailNameAndPrice(),
            _buildDetailRatingandReviewCount(),
            _buildDetailColorOptions(),
            _buildDetailButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailNameAndPrice() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        // 1. spaceBetween이 적용되면 양끝에서 벌어진다
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Urban Soft AL 10.0",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "\$699",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDetailRatingandReviewCount() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          // 2. Spacer로 Icon 위젯과 Text위젯을 양끝으로 벌릴 수 있다. SpaceBetween과 동일
          Spacer(),
          Text("Review"),
          Text("(26)", style: TextStyle(color: Colors.blue))
        ],
      ),
    );
  }

  Widget _buildDetailColorOptions() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Color Options"),
          SizedBox(height: 10),
          Row(
            children: [
              // 3. 동일한 색상 아이콘을 재사용하기 위해 함수로 관리
              _buildDetailIcon(Colors.black),
              _buildDetailIcon(Colors.grey),
              _buildDetailIcon(Colors.orange),
              _buildDetailIcon(Colors.green),
              _buildDetailIcon(Colors.blue),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildDetailButton(BuildContext context) {
    return Align(
      child: TextButton(
        onPressed: () {
          showCupertinoDialog(
            context: context,
            builder: (context) => CupertinoAlertDialog(
              title: Text("장바구니에 담으시겠습니까?"),
              actions: [
                CupertinoDialogAction(
                  child: Text("확인"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          );
        },
        style: TextButton.styleFrom(
            backgroundColor: kAccentColor,
            minimumSize: Size(300, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        child: Text(
          "Add to Cart",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

// 4. 다른 화면에서도 재사용하면 공통 컴포넌트 위젯으로 관리하는 것이 좋음
  Widget _buildDetailIcon(Color mColor) {
    return Padding(
      padding: EdgeInsets.only(right: 10),

      // 5. Stack의 첫 번째 Container위젯에 Positioned 위젯이 올라가는 형태
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            left: 5,
            top: 5,
            child: ClipOval(
              child: Container(
                width: 40,
                height: 40,
                color: mColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
