import 'package:flutter/material.dart';
import 'package:metabugo/presentation/views/sign_in.dart';
import 'package:metabugo/res/media_res.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {
  Color _textUnderLineColor1 = MediaRes.textUnderLineColor;
  Color _textUnderLineColor2 = MediaRes.textUnderLineColor;
  Color _textUnderLineColor3 = MediaRes.textUnderLineColor;

  Color _textColor1 = MediaRes.blockColor;
  Color _textColor2 = MediaRes.blockColor;
  Color _textColor3 = MediaRes.blockColor;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '부고앱',
          style: TextStyle(
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w500,
            fontSize: MediaRes.fontSize20,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>SignIn()),
              );// 로그인하기 버튼이 눌렸을 때의 동작 추가
            },
            child: Text(
              '로그인하기',
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
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                MediaRes.candle,
                width: double.infinity,
                height: 171,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    _textUnderLineColor1 = MediaRes.selectColor;
                    _textUnderLineColor2 = MediaRes.textUnderLineColor;
                    _textUnderLineColor3 = MediaRes.textUnderLineColor;

                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: _textUnderLineColor1, // 동적으로 변경된 밑줄 색상
                        width: 1.0,
                      ),
                    ),
                  ),
                  width: 267,
                  height: 50,
                  child: Center(
                    child: Text(
                      '부고장 작성하기',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize18,
                        fontWeight: FontWeight.w500,
                        color: _textUnderLineColor1 == MediaRes.selectColor ? MediaRes.selectColor : MediaRes.blockColor,
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _textUnderLineColor1 = MediaRes.textUnderLineColor;
                    _textUnderLineColor2 = MediaRes.selectColor;
                    _textUnderLineColor3 = MediaRes.textUnderLineColor;

                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: _textUnderLineColor2,
                        width: 1.0,
                      ),
                    ),
                  ),
                  width: 267,
                  height: 50,
                  child: Center(
                    child: Text(
                      '부고장보낸내역확인하기',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize18,
                        fontWeight: FontWeight.w500,
                        color: _textUnderLineColor2 == MediaRes.selectColor ? MediaRes.selectColor : MediaRes.blockColor,
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _textUnderLineColor1 = MediaRes.textUnderLineColor;
                    _textUnderLineColor2 = MediaRes.textUnderLineColor;
                    _textUnderLineColor3 = MediaRes.selectColor;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: _textUnderLineColor3,
                        width: 1.0,
                      ),
                    ),
                  ),
                  width: 267,
                  height: 50,
                  child: Center(
                    child: Text(
                      '화환내역확인하기',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize18,
                        fontWeight: FontWeight.w500,
                        color: _textUnderLineColor3 == MediaRes.selectColor ? MediaRes.selectColor : MediaRes.blockColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
