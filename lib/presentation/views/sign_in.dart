import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인하기',
        style: TextStyle(
          fontSize: MediaRes.fontSize20,
          fontFamily: MediaRes.fontPretendard,
          fontWeight: MediaRes.medium
        ),),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.33,
          ),
          Container(
            width: 328,
            height: 56,
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontWeight: MediaRes.medium,
                fontFamily: MediaRes.fontPretendard,
                fontSize: MediaRes.fontSize18,
              ),
              decoration: InputDecoration(
                  hintText: '전화번호를 입력해주세요',
                  hintStyle: TextStyle(
                      color: MediaRes.greyColor,
                      fontFamily: MediaRes.fontPretendard,
                      fontSize: MediaRes.fontSize18),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: MediaRes.textUnderLineColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: MediaRes.greyBtnColor),
                  )),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(328, 56),
                backgroundColor: MediaRes.mainBtnColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: Text(
                '로그인하기',
                style: TextStyle(
                    color: MediaRes.whiteColor,
                    fontFamily: MediaRes.fontPretendard,
                    fontSize: MediaRes.fontSize18),
              )),
          SizedBox(height: 13),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            // TODO:다른 기종으로 확인!!!!!!!!!!
            child: Container(
              child: Row(
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                    activeColor: MediaRes.checkBoxColor,
                  ),
                  Text(
                    '자동로그인',
                    style: TextStyle(
                      fontFamily: MediaRes.fontPretendard,
                      fontSize: MediaRes.fontSize18,
                      fontWeight: MediaRes.medium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
