import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:metabugo/res/media_res.dart';

class SignUpWithPhone extends StatefulWidget {
  const SignUpWithPhone({super.key});

  @override
  State<SignUpWithPhone> createState() => _SignUpWithPhoneState();
}

class _SignUpWithPhoneState extends State<SignUpWithPhone> {
  TextEditingController _dateController = TextEditingController();
DateTime? _selectedDate;
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        firstDate: DateTime(1900),
        lastDate: DateTime.now());

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = DateFormat('yyyy-MM-dd').format(picked);// 선택된 날짜를 텍스트 필드에 표시
      });
    }
  }
  @override
  Widget build(BuildContext context) {
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
                      SizedBox(height: 16,),
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
                          borderSide:
                          BorderSide(color: MediaRes.greyBtnColor),
                        )
                    ),
                  ),
                  SizedBox(height: 12,),
                  TextField(
                    controller: _dateController,
                    onTap: (){
                      _selectDate(context);
                    },
                    //onTap: () =>showDatePicker(context: context, firstDate: DateTime(1900), lastDate: DateTime.now()),
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
                        )
                    ),
                  ),
                  SizedBox(height: 12,),
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
                          borderSide:
                          BorderSide(color: MediaRes.greyBtnColor),
                        )
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
