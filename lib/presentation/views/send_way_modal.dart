import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class SendWayModal extends StatelessWidget {
  const SendWayModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 154,
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      MediaRes.kakao,
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '카카오톡 보내기',
                      style: TextStyle(
                        color: MediaRes.blackColor,
                        fontFamily: MediaRes.fontPretendard,
                        fontWeight: MediaRes.semiBold,
                        fontSize: MediaRes.fontSize18,
                      ),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: /*Color(0xffFFDE00)*/
                        MediaRes.kakaoBtnColor),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  '문자 보내기',
                  style: TextStyle(
                    color: MediaRes.blackColor,
                    fontWeight: MediaRes.semiBold,
                    fontFamily: MediaRes.fontPretendard,
                    fontSize: MediaRes.fontSize18,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: MediaRes.greyBtnColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
