import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class MournerInfo extends StatelessWidget {
  const MournerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '상주정보',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                ),
              ),
              Text(
                '(필수)',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  color: MediaRes.redText,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Column(
            children: [
              TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  fontSize: MediaRes.fontSize18,
                ),
                decoration: InputDecoration(
                    hintText: '고인과의 관계를 써주세요',
                    hintStyle: TextStyle(
                        color: MediaRes.greyColor,
                        fontFamily: MediaRes.fontPretendard,
                        fontSize: MediaRes.fontSize18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          BorderSide(color: MediaRes.textUnderLineColor),
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
              TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  fontSize: MediaRes.fontSize18,
                ),
                decoration: InputDecoration(
                    hintText: '상주이름을 입력해 주세요',
                    hintStyle: TextStyle(
                        color: MediaRes.greyColor,
                        fontFamily: MediaRes.fontPretendard,
                        fontSize: MediaRes.fontSize18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          BorderSide(color: MediaRes.textUnderLineColor),
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
              TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  fontSize: MediaRes.fontSize18,
                ),
                decoration: InputDecoration(
                    hintText: '연락가능한 전화번호를 입력해 주세요',
                    hintStyle: TextStyle(
                        color: MediaRes.greyColor,
                        fontFamily: MediaRes.fontPretendard,
                        fontSize: MediaRes.fontSize18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          BorderSide(color: MediaRes.textUnderLineColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: MediaRes.greyBtnColor),
                    ),
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
