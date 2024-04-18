import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:metabugo/presentation/views/bugoPreview/bugo_preview_map.dart';
import 'package:metabugo/res/media_res.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BugoPreviewNavi extends StatelessWidget {
  const BugoPreviewNavi({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: Container(
        height: 506,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: MediaRes.textUnderLineColor,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 12.0, left: 10.0, bottom: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '오시는 길',
                      style: TextStyle(
                        fontSize: MediaRes.fontSize18,
                        fontWeight: MediaRes.medium,
                        fontFamily: MediaRes.fontPretendard,
                        color: MediaRes.blackColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // 주소 복사 기능 구현
                      },
                      child: Text(
                        '주소복사',
                        style: TextStyle(
                          fontSize: MediaRes.fontSize14,
                          fontWeight: MediaRes.medium,
                          fontFamily: MediaRes.fontPretendard,
                          color: MediaRes.greyTextSearch,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // kakaoNavi
              BugoPreviewMap(),
              SizedBox(
                height: 14,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text(
                    '네비게이션',
                    style: TextStyle(
                      fontFamily: MediaRes.fontPretendard,
                      fontWeight: MediaRes.medium,
                      fontSize: MediaRes.fontSize18,
                      color: MediaRes.blackColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: () {
                  _launchKakaoNavi(context);
                },
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: MediaRes.whiteColor,
                      border: Border.all(color: MediaRes.textUnderLineColor)),
                  child: Center(
                    child: Text(
                      '카카오 네비게이션 열기',
                      style: TextStyle(
                        fontFamily: MediaRes.fontPretendard,
                        fontWeight: MediaRes.medium,
                        fontSize: MediaRes.fontSize18,
                        color: MediaRes.blackColor, // 버튼 텍스트 색상 설정
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: () {
                },
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: MediaRes.whiteColor,
                      border: Border.all(color: MediaRes.textUnderLineColor)),
                  child: Center(
                    child: Text(
                      '티맵 네비게이션 열기',
                      style: TextStyle(
                        fontFamily: MediaRes.fontPretendard,
                        fontWeight: MediaRes.medium,
                        fontSize: MediaRes.fontSize18,
                        color: MediaRes.blackColor, // 버튼 텍스트 색상 설정
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text(
                    '주소',
                    style: TextStyle(
                      fontFamily: MediaRes.fontPretendard,
                      fontWeight: MediaRes.medium,
                      fontSize: MediaRes.fontSize18,
                      color: MediaRes.blackColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text(
                    '경기 화성시 향남읍 발안로 322',
                    style: TextStyle(
                      fontFamily: MediaRes.fontPretendard,
                      fontWeight: MediaRes.medium,
                      fontSize: MediaRes.fontSize18,
                      color: MediaRes.blackColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchKakaoNavi(BuildContext context) async {
    final location = Location(
      name: '카카오 판교오피스',
      x: '127.108640',
      y: '37.402111',
    );
    try {
      final installed = await NaviApi.instance.isKakaoNaviInstalled();
      if (installed) {
        await NaviApi.instance.navigate(destination: location);
      } else {
        final url = 'https://play.google.com/store/search?q=%EC%B9%B4%EC%B9%B4%EC%98%A4%EB%84%A4%EB%B9%84&c=apps&hl=ko&gl=US';
        if (await canLaunchUrlString(url)) {
          await launchUrlString(url);
        } else {
          throw 'Could not launch $url';
        }
      }
    } catch (e) {
      // 예외 처리
      print('네비게이션 오류: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('네비게이션을 열 수 없습니다.'),
        ),
      );
    }
  }

}
