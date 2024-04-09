import 'package:flutter/material.dart';
import 'package:metabugo/presentation/views/funeral_selected_screen.dart';
import 'package:metabugo/res/media_res.dart';

class FuneralSendCheckScreen extends StatelessWidget {
  const FuneralSendCheckScreen({super.key});

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
                '내역확인하기',
                style: TextStyle(
                  color: MediaRes.blackColor,
                  fontWeight: MediaRes.medium,
                  fontSize: MediaRes.fontSize20,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FuneralSelectedScreen(),
                    ),
                  );
                },
                child: Text(
                  '보내기',
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
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  title: Text(
                    '홍길동',
                    style: TextStyle(
                      fontSize: MediaRes.fontSize18,
                      fontWeight: MediaRes.medium,
                      fontFamily: MediaRes.fontPretendard,
                      color: MediaRes.blackColor,
                    ),
                  ),
                  trailing: Text(
                    '문자로 발송완료',
                    style: TextStyle(
                      fontSize: MediaRes.fontSize14,
                      fontWeight: MediaRes.medium,
                      fontFamily: MediaRes.fontPretendard,
                      color: MediaRes.textUnderLineColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Divider(
                    indent: 1,
                    color: MediaRes.textUnderLineColor,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
