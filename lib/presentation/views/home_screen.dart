import 'package:flutter/material.dart';
import 'package:metabugo/presentation/providers/home_screen_provider.dart';
import 'package:provider/provider.dart';
import 'package:metabugo/presentation/views/sign_in.dart';
import 'package:metabugo/res/media_res.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeScreenProvider>(
      create: (context) => HomeScreenProvider(), // Provider 생성
      child: _HomeScreenContent(), // 실제 화면을 구성하는 위젯
    );
  }
}

class _HomeScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var homeScreenProvider = Provider.of<HomeScreenProvider>(context); // Provider로부터 상태 가져오기

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
              );
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
                  homeScreenProvider.updateTextUnderLineColor1(MediaRes.selectColor);
                  homeScreenProvider.resetButtonState(2);
                  homeScreenProvider.resetButtonState(3);
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: homeScreenProvider.textUnderLineColor1,
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
                        color: homeScreenProvider.textUnderLineColor1 == MediaRes.selectColor ? MediaRes.selectColor : MediaRes.blockColor,
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  homeScreenProvider.updateTextUnderLineColor2(MediaRes.selectColor);
                  homeScreenProvider.resetButtonState(1);
                  homeScreenProvider.resetButtonState(3);
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: homeScreenProvider.textUnderLineColor2,
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
                        color: homeScreenProvider.textUnderLineColor2 == MediaRes.selectColor ? MediaRes.selectColor : MediaRes.blockColor,
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  homeScreenProvider.updateTextUnderLineColor3(MediaRes.selectColor);
                  homeScreenProvider.resetButtonState(1);
                  homeScreenProvider.resetButtonState(2);
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: homeScreenProvider.textUnderLineColor3,
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
                        color: homeScreenProvider.textUnderLineColor3 == MediaRes.selectColor ? MediaRes.selectColor : MediaRes.blockColor,
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
