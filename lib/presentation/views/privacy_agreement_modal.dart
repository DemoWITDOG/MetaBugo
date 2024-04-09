import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class PrivacyAgreementModal extends StatelessWidget {
  const PrivacyAgreementModal({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white, // 배경색을 흰색으로 설정
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '개인정보전체동의하기',
                style: TextStyle(
                  fontSize: MediaRes.fontSize20,
                  fontWeight: MediaRes.semiBold,
                  fontFamily: MediaRes.fontPretendard,
                ),
              ),
              Checkbox(
                activeColor: MediaRes.checkBoxColor,
                value: true,
                onChanged: (value) {},
              ),
            ],
          ),
          Divider(
            indent: 1,
            color: MediaRes.textUnderLineColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '개인정보 동의',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.semiBold,
                  fontFamily: MediaRes.fontPretendard,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // 보기 버튼 클릭 시 수행할 작업 추가
                },
                child: Row(
                  children: [
                    SizedBox(
                      height: 36,
                      width: 82,
                      child: OutlinedButton(
                        onPressed: () {
                          // 버튼 클릭 시 수행할 작업 추가
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: MediaRes.textUnderLineColor,
                            // 테두리 색상을 회색으로 설정
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: Text(
                          '보기',
                          style: TextStyle(
                            color: MediaRes.blackColor,
                            fontSize: MediaRes.fontSize14,
                            fontWeight: MediaRes.medium,
                            fontFamily: MediaRes.fontPretendard,
                          ),
                        ),
                      ),
                    ),
                    Checkbox(
                      activeColor: MediaRes.checkBoxColor,
                      value: true,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '알림동의',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.semiBold,
                  fontFamily: MediaRes.fontPretendard,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // 보기 버튼 클릭 시 수행할 작업 추가
                },
                child: Row(
                  children: [
                    SizedBox(
                      height: 36,
                      width: 82,
                      child: OutlinedButton(
                        onPressed: () {
                          // 버튼 클릭 시 수행할 작업 추가
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: MediaRes.textUnderLineColor, // 테두리 색상을 회색으로 설정
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: Text(
                          '보기',
                          style: TextStyle(
                            color: MediaRes.blackColor,
                            fontSize: MediaRes.fontSize14,
                            fontWeight: MediaRes.medium,
                            fontFamily: MediaRes.fontPretendard,
                          ),
                        ),
                      ),
                    ),
                    Checkbox(
                      activeColor: MediaRes.checkBoxColor,
                      value: true,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(56),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              backgroundColor: MediaRes.mainBtnColor,
            ),
            child: Text(
              '동의하기',
              style: TextStyle(
                fontSize: MediaRes.fontSize18,
                fontWeight: MediaRes.semiBold,
                fontFamily: MediaRes.fontPretendard,
                color: MediaRes.whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
