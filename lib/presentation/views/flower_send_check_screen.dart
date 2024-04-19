import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class FlowerSendCheckScreen extends StatelessWidget {
  const FlowerSendCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left),
        ),
        title: Text('내역 확인하기'),
        titleSpacing: 0,
      ),
      body: Container(
        color: MediaRes.whiteColor,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '(주)하늘주식회사 김나나',
                            style: TextStyle(
                              fontSize: MediaRes.fontSize18,
                              fontWeight: MediaRes.medium,
                              fontFamily: MediaRes.fontPretendard,
                              color: MediaRes.blackColor,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '2024년04월12일',
                            style: TextStyle(
                              fontSize: MediaRes.fontSize16,
                              fontWeight: MediaRes.medium,
                              fontFamily: MediaRes.fontPretendard,
                              color: MediaRes.greyText2,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '4단화환',
                        style: TextStyle(
                          fontSize: MediaRes.fontSize18,
                          fontWeight: MediaRes.medium,
                          fontFamily: MediaRes.fontPretendard,
                          color: MediaRes.blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 17.0, bottom: 17.0),
                  child: Divider(
                    indent: 1,
                    color: MediaRes.textUnderLineColor,
                    height: 0,
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
