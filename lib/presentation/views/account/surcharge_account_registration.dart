import 'package:flutter/material.dart';
import 'package:metabugo/presentation/views/account/account_auth_dialog.dart';
import 'package:metabugo/res/media_res.dart';

class SurchargeAccountRegistration extends StatelessWidget {
  const SurchargeAccountRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              '부의금 계좌등록',
              style: TextStyle(
                fontSize: MediaRes.fontSize18,
                fontWeight: MediaRes.medium,
                fontFamily: MediaRes.fontPretendard,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            fontWeight: MediaRes.medium,
            fontFamily: MediaRes.fontPretendard,
            fontSize: MediaRes.fontSize18,
          ),
          decoration: InputDecoration(
            hintText: '관계를 입력해주세요',
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
            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  fontSize: MediaRes.fontSize18,
                ),
                decoration: InputDecoration(
                  hintText: '은행명',
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
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              flex: 2,
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  fontSize: MediaRes.fontSize18,
                ),
                decoration: InputDecoration(
                  hintText: '예금주',
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
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  fontSize: MediaRes.fontSize18,
                ),
                decoration: InputDecoration(
                  hintText: '계좌번호',
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
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AccountAuthDialog();
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(106, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: MediaRes.mainBtnColor, // 버튼의 배경색
                ),
                child: Text(
                  '인증하기',
                  style: TextStyle(
                    color: MediaRes.whiteColor,
                    fontFamily: MediaRes.fontPretendard,
                    fontSize: MediaRes.fontSize18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
