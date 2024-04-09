import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class BurialGround extends StatelessWidget {
  const BurialGround({super.key});

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
                '장지',
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
          Row(
            children: [
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
                    hintText: '장지를 입력해 주세요',
                    hintStyle: TextStyle(
                      color: MediaRes.greyColor,
                      fontFamily: MediaRes.fontPretendard,
                      fontSize: MediaRes.fontSize18,
                    ),
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
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
