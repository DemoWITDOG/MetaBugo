import 'dart:async';

import 'package:flutter/material.dart';
import 'package:metabugo/presentation/views/home_screen.dart';
import 'package:metabugo/res/media_res.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => HomeScreen(), ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 450,
        color: MediaRes.splashMainColor,
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.3, // 화면 높이의 28%
              ),
              Text(
                '메타부고',
                style: TextStyle(
                    fontSize: 36, fontFamily: MediaRes.fontKoPubBatang),
              ),
              SizedBox(height: 10,),
              Text(
                '삼가 고인의 명복을 빕니다',
                style: TextStyle(
                    fontSize: 16, fontFamily: MediaRes.fontKoPubBatang),
              ),
              SizedBox(
                height: 75,
              ),
              Container(
                height:  MediaQuery
                    .of(context)
                    .size
                    .height * 0.40,
                child: Image.asset(
                  MediaRes.splash,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
