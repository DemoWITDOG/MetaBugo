import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class AccountAuthDialog extends StatelessWidget {
  const AccountAuthDialog({Key? key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: 294,
        height: 279,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '계좌인증',
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
                      '1원을 홍길동님 계좌로 보냈습니다.',
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
                      '문구를 아래 입력창에 입력해 주세요',
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
              // TODO : 유효성 검사 구현 필요
              TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  fontSize: MediaRes.fontSize18,
                ),
                decoration: InputDecoration(
                  hintText: '문구를 입력해 주세요',
                  hintStyle: TextStyle(
                    color: MediaRes.greyColor,
                    fontFamily: MediaRes.fontPretendard,
                    fontSize: MediaRes.fontSize18,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: MediaRes.textUnderLineColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: MediaRes.greyBtnColor),
                  ),
                  isDense: true,
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 16, horizontal: 12),
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
