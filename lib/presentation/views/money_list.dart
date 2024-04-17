import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class MoneyList extends StatelessWidget {
  const MoneyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MediaRes.whiteColor,
      appBar: AppBar(
        backgroundColor: MediaRes.whiteColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left),
        ),
        title: Text(
          '부의금 내역',
          style: TextStyle(
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w500,
            fontSize: MediaRes.fontSize20,
          ),
        ),
        titleSpacing: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              '연동취소',
              style: TextStyle(
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
                fontSize: MediaRes.fontSize18,
                color: MediaRes.blueColor,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    MediaRes.moneyList,
                    width: double.infinity,
                    height: 172,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                    top: 18,
                    left: 21,
                    child: Text(
                      '총금액',
                      style: TextStyle(
                        color: Colors.white70,
                        //color: Colors.white.withOpacity(0.6),
                        fontSize: MediaRes.fontSize18,
                      ),
                    )),
                Positioned(
                    top: 45,
                    left: 21,
                    child: Text(
                      '600,000원',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize24,
                        fontWeight: MediaRes.extraBold,
                        color: MediaRes.whiteColor,
                      ),
                    ))
              ],
            ),
          ),
          Container(
            child: Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(
                                '김희나',
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                            VerticalDivider(
                              color: MediaRes.textUnderLineColor,
                              indent: 10,
                              endIndent: 9,
                            )
                          ],
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('2024년04월02일 오후12시56분',
                                style: TextStyle(
                                    fontFamily: MediaRes.fontPretendard,
                                    fontWeight: MediaRes.regular,
                                    fontSize: MediaRes.fontSize14,
                                    color: MediaRes.greyText2)),
                            Text('100,000원',
                                style: TextStyle(
                                  fontFamily: MediaRes.fontPretendard,
                                  fontWeight: MediaRes.extraBold,
                                  fontSize: MediaRes.fontSize18,
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Divider(
                          color: MediaRes.textUnderLineColor,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
