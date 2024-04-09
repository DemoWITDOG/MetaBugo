import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class AdminConfirmDialog extends StatelessWidget {
  const AdminConfirmDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: 294,
        height: 207,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '관리자확인',
                style: TextStyle(
                  fontSize: MediaRes.fontSize22,
                  fontWeight: MediaRes.semiBold,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 27,
                    child: Text(
                      '아직 검토중입니다.',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize18,
                        fontWeight: MediaRes.medium,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 27,
                    child: Text(
                      '관리자 환인후 이용가능합니다',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize18,
                        fontWeight: MediaRes.medium,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                  ),
                ],
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
