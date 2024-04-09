import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class PrivacySuccessDialog extends StatelessWidget {
  const PrivacySuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: 294,
        height: 180,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '개인정보동의',
                style: TextStyle(
                  fontSize: MediaRes.fontSize22,
                  fontWeight: MediaRes.semiBold,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
              SizedBox(height: 16),
              Text(
                '개인정보동의를 모두 해주셨습니다.',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: MediaRes.mainBtnColor, // 버튼의 배경색
                ),
                child: Text(
                  '확인',
                  style: TextStyle(
                    color: MediaRes.whiteColor,
                    fontFamily: MediaRes.fontPretendard,
                    fontSize: MediaRes.fontSize18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
