import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class BugoPreviewSendMessage extends StatelessWidget {
  const BugoPreviewSendMessage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Container(
        height: 156,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: MediaRes.textUnderLineColor,
            width: 1,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Text(
                '내용 전하는 말씀',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                height: 0,
                indent: 16,
                endIndent: 16,
              ),
              SizedBox(
                height: 13,
              ),
              Text('바쁘신 와중에도 이렇게 찾아와주셔서 감사합니다..',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
