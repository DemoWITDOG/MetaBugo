import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class SendFlower extends StatelessWidget {
  const SendFlower({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_arrow_left)),
        title: Text(
          '화환내역 확인하기',
          style: TextStyle(
            fontSize: MediaRes.fontSize20,
            fontFamily: MediaRes.fontPretendard,
            fontWeight: MediaRes.medium,
          ),
        ),
        titleSpacing: 0,
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 16.0),
            child: Container(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Container()),
                  );
                },
                child: Text(
                  '취소/수정',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    fontSize: MediaRes.fontSize18,
                    color: MediaRes.blueColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            horizontalTitleGap: 10.0,
            leading: Container(
              width: 53,
              height: 53,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                  image: DecorationImage(image: AssetImage(MediaRes.flowerIcon),fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(12),
                  ),
            ),
            title: Text(
              '장례식장이름',
              style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard),
            ),
            subtitle: Text(
              '故 홍길동 (97세/남)',
              style: TextStyle(
                fontSize: MediaRes.fontSize14,
                fontWeight: MediaRes.medium,
                fontFamily: MediaRes.fontPretendard,
                color: MediaRes.greyText2,
              ),
            ),
            trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: MediaRes.mainBtnColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  minimumSize: Size(106, 56)),
              onPressed: () {},
              child: Text(
                '내역확인',
                style: TextStyle(
                    color: MediaRes.whiteColor,
                    fontFamily: MediaRes.fontPretendard,
                    fontSize: MediaRes.fontSize18),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
