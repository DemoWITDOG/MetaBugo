import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left),
        ),
        title: Text(
          '이용약관 동의',
          style: TextStyle(
              fontSize: MediaRes.fontSize20,
              fontWeight: MediaRes.medium,
              fontFamily: MediaRes.fontPretendard,
              color: MediaRes.blackColor),
        ),
        titleSpacing: 0,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '메타부고서비스 이용약관',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '메타부고서비스 이용약관 및 관련 제반 서비스의 이용과 관련하여 필요한 사항을 규정합니다. 메타부고의 회원약관은 다음과 같은 내용을 담고 있습니다.',
              ),
              SizedBox(height: 10),
              // 내용 계속 추가
            ],
          ),
        ),
      ),
    );
  }
}
