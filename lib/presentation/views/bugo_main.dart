import 'package:flutter/material.dart';
import 'package:metabugo/presentation/views/home_screen.dart';
import 'package:metabugo/presentation/views/manage_funeral.dart';
import 'package:metabugo/presentation/views/signUp/sign_in.dart';
import 'package:metabugo/res/media_res.dart';

class BugoMain extends StatelessWidget {
  const BugoMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '메타부고',
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
                MaterialPageRoute(builder: (context) => SignIn()),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.91,
                height: 210,
                child: Stack(
                  children: [
                    Positioned(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        },
                        child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(MediaRes.makeBugo),
                                    fit: BoxFit.cover))),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        child: SizedBox(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.91,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery
                                          .of(context)
                                          .size
                                          .width * 0.91,
                                      53),
                                  backgroundColor: Colors.black.withOpacity(
                                      0.4),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8)))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              },
                              child: Text(
                                '디지털 부고 만들기',
                                style: TextStyle(
                                    color: MediaRes.whiteColor,
                                    fontSize: MediaRes.fontSize18,
                                    fontFamily: MediaRes.fontPretendard,
                                    fontWeight: MediaRes.semiBold),
                              )),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.91,
                height: 210,
                child: Stack(
                  children: [
                    Positioned(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ManageFuneral()),
                          );
                        },
                        child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(MediaRes.manage),
                                    fit: BoxFit.cover))),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        child: SizedBox(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.91,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery
                                          .of(context)
                                          .size
                                          .width * 0.91,
                                      53),
                                  primary: Colors.black.withOpacity(0.4),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8)))),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ManageFuneral(),));
                              },
                              child: Text(
                                '장례식장 관리하기',
                                style: TextStyle(
                                    color: MediaRes.whiteColor,
                                    fontSize: MediaRes.fontSize18,
                                    fontFamily: MediaRes.fontPretendard,
                                    fontWeight: MediaRes.semiBold),
                              )),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
