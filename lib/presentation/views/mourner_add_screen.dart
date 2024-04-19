import 'package:flutter/material.dart';
import 'package:metabugo/presentation/views/account/account_add_screen.dart';
import 'package:metabugo/res/media_res.dart';

class MournerAddScreen extends StatelessWidget {
  const MournerAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MediaRes.whiteColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '상주 추가 하기',
                style: TextStyle(
                  color: MediaRes.blackColor,
                  fontWeight: MediaRes.medium,
                  fontSize: MediaRes.fontSize20,
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Text(
                  '상주추가',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blueText,
                  ),
                ),
              )
            ],
          ),
        ),
        titleSpacing: 0,
      ),
      body: Container(
        color: MediaRes.whiteColor,
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  children: [
                    Text(
                      '상주정보',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize18,
                        fontWeight: MediaRes.medium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: TextField(
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
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: TextField(
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
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: TextField(
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
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      backgroundColor: MediaRes.blackBtnColor,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccountAddScreen()),
                      );
                      // 버튼을 눌렀을 때 수행할 동작
                    },
                    child: Text(
                      '다음',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize18,
                        fontWeight: MediaRes.semiBold,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.whiteColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
