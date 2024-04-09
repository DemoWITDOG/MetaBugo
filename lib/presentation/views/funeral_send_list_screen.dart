import 'package:flutter/material.dart';
import 'package:metabugo/presentation/views/funeral_send_check_screen.dart';
import 'package:metabugo/res/media_res.dart';

class FuneralSendListScreen extends StatelessWidget {
  const FuneralSendListScreen({Key? key}) : super(key: key);

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
                '부고장 보낸내역',
                style: TextStyle(
                  color: MediaRes.blackColor,
                  fontWeight: MediaRes.medium,
                  fontSize: MediaRes.fontSize20,
                ),
              ),
              Text(
                '취소/수정',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blueText,
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
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      MediaRes.candle,
                      height: 53,
                      width: 53,
                      fit: BoxFit.fill,
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '하늘장례식장',
                        style: TextStyle(
                          fontSize: MediaRes.fontSize18,
                          fontWeight: MediaRes.medium,
                          fontFamily: MediaRes.fontPretendard,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '故',
                            style: TextStyle(
                              fontSize: MediaRes.fontSize14,
                              fontWeight: MediaRes.medium,
                              fontFamily: MediaRes.fontPretendard,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '(홍길동 (87/남)',
                            style: TextStyle(
                              fontSize: MediaRes.fontSize14,
                              fontWeight: MediaRes.medium,
                              fontFamily: MediaRes.fontPretendard,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FuneralSendCheckScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(106, 56),
                      backgroundColor: MediaRes.mainBtnColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      '내역 확인',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize18,
                        fontWeight: MediaRes.semiBold,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.whiteColor,
                      ),
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
