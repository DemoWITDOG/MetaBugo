import 'package:flutter/material.dart';
import 'package:metabugo/presentation/views/sign_in.dart';
import 'package:metabugo/res/media_res.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '부고앱',
          style: TextStyle(
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>SignIn()),
              );// 로그인하기 버튼이 눌렸을 때의 동작 추가
            },
            child: Text(
              '로그인하기',
              style: TextStyle(color: MediaRes.blueColor),
            ),
          ),
        ],
      ),
        body: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    MediaRes.candle,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
