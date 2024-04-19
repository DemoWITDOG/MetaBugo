import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';
import 'package:metabugo/widgets/dialog/auth_complete_dialog.dart';
import 'package:timer_count_down/timer_count_down.dart';

class AuthPhone extends StatelessWidget {
  const AuthPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.30,
        child: Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Text(
                '인증번호 6자리를 입력해주세요',
                style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontFamily: MediaRes.fontPretendard,
                    fontWeight: MediaRes.medium),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(children: [
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: '숫자 6자리',
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
                        borderSide: BorderSide(color: MediaRes.blueColor),
                      )),
                ),
                Positioned(
                  right: 15,
                  top: 20,
                  child: Container(
                    height: 23,
                    child: Countdown(
                      // controller: _controller,
                      seconds: 60,
                      build: (_, double time) => Text(
                        time.toInt().toString() + '초',
                        style: TextStyle(
                          color: MediaRes.redAlertText,
                          fontSize: MediaRes.fontSize18,
                        ),
                      ),
                      interval: Duration(milliseconds: 100),
                      onFinished: () {},
                    ),
                  ),
                )
              ]),
              SizedBox(
                height: 10,
              ),
              Text(
                '인증번호가 도착하지 않았다면?',
                style: TextStyle(
                    color: MediaRes.greyText2,
                    fontSize: MediaRes.fontSize14,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                //width: 138,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    '인증번호 다시 받기',
                    style: TextStyle(
                        color: MediaRes.greyText2,
                        fontSize: MediaRes.fontSize14,
                        fontWeight: MediaRes.medium,
                        fontFamily: MediaRes.fontPretendard),
                  ),
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: MediaRes.greyBtnColor),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 56,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AuthCompleteDialog()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MediaRes.mainBtnColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: Text(
                      '인증하기',
                      style: TextStyle(
                        color: MediaRes.whiteColor,
                        fontWeight: MediaRes.semiBold,
                        fontSize: MediaRes.fontSize18,
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
