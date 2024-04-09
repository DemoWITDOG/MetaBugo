import 'package:flutter/material.dart';
import 'package:metabugo/presentation/providers/datepicker_provider.dart';
import 'package:metabugo/presentation/views/signUp/auth_phone.dart';
import 'package:metabugo/res/media_res.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final datePickerProvider = Provider.of<DatePickerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('본인인증하기'),
        leading:
        IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_left)),
        titleSpacing: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        '본인 확인을 해주세요',
                        style: TextStyle(
                          fontSize: MediaRes.fontSize18,
                          fontFamily: MediaRes.fontPretendard,
                          fontWeight: MediaRes.medium,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: '이름을 입력해 주세요',
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
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 56,
                    child: TextField(
                      controller: datePickerProvider.dateController,
                      onTap: () {
                         datePickerProvider.selectDatePicker(context);
                        //_selectDate(context);
                      },
                      decoration: InputDecoration(
                          hintText: 'YYYY/MM/DD',
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
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 12)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "'" + '-' + "'" + '없이 휴대폰번호를 입력해주세요',
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
                ],
              ),
            ),
            Expanded(
                child: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.44,
                )),
            Container(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MediaRes.blackBtnColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                  onPressed: () =>
                      showModalBottomSheet(
                          context: context, builder: (BuildContext context) {
                        return AuthPhone();
                      }),
                  child: Text(
                    '인증번호받기',
                    style: TextStyle(
                      fontWeight: MediaRes.semiBold,
                      fontFamily: MediaRes.fontPretendard,
                      fontSize: MediaRes.fontSize18,
                      color: MediaRes.whiteColor,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
