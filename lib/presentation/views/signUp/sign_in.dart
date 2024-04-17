import 'package:flutter/material.dart';
import 'package:metabugo/presentation/providers/auto_sign_in_provider.dart';
import 'package:metabugo/res/media_res.dart';
import 'package:provider/provider.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AutoSignInProvider>(
      create: (_) => AutoSignInProvider(),
      child: _SignInContent(),
    );
  }
}

class _SignInContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final autoSignInProvider = Provider.of<AutoSignInProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MediaRes.whiteColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_arrow_left)),
        title: Text(
          '로그인하기',
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
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontWeight: MediaRes.medium,
                      fontFamily: MediaRes.fontPretendard,
                      fontSize: MediaRes.fontSize18,
                    ),
                    decoration: InputDecoration(
                        hintText: '전화번호를 입력해 주세요',
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
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 12)),
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
                  padding: EdgeInsets.only(left: 16, right: 16),
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
          Consumer<AutoSignInProvider>(
            builder: (context, autoSignInProvider, _) {
              return Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Checkbox(
                      value: autoSignInProvider.isChecked,
                      onChanged: (newValue) {
                        autoSignInProvider.setIsChecked(newValue ?? false);
                      },
                      activeColor: MediaRes.checkBoxColor,
                    ),
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
              );
            },
          ),
        ],
      ),
    );
  }
}
