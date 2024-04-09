import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class MessageMourners extends StatelessWidget {
  const MessageMourners({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                '조문객에게 전하는 말씀',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                ),
              ),
              Text(
                '(선택)',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  color: MediaRes.blueText,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13.5,
          ),
          Divider(
            color: MediaRes.textUnderLineColor,
            indent: 1,
          ),
          TextField(
            maxLines: 2,
            decoration: InputDecoration(
              hintText: '내용을 입력하세요\n(개인 정보는 제공하지 말아주세요)',
              // 줄 바꿈 추가
              hintStyle: TextStyle(color: MediaRes.textUnderLineColor),
              contentPadding: EdgeInsets.symmetric(horizontal: 1),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MediaRes.whiteColor),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          SizedBox(
            height: 102,
          ),
        ],
      ),
    );
  }
}
