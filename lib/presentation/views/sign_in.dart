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
        leading:
            IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.keyboard_arrow_left)),
        title: Text('로그인하기',
          style: TextStyle(
            fontSize: MediaRes.fontSize20,
            fontFamily: MediaRes.fontPretendard,
            fontWeight: MediaRes.medium,
          ),
        ),
        titleSpacing: 0,

      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.33,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 16,right: 16),
                  child: Container(
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
                            borderSide:
                                BorderSide(color: MediaRes.textUnderLineColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: MediaRes.greyBtnColor),
                          )),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 16,right: 16),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(0, 56),
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
                ),
              ),
            ],
          ),
          SizedBox(height: 13),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
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
        ],
      ),
    );
  }
}
