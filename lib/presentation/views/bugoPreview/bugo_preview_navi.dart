import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:metabugo/presentation/views/bugoPreview/bugo_preview_map.dart';
import 'package:metabugo/res/media_res.dart';

class BugoPreviewNavi extends StatelessWidget {
  const BugoPreviewNavi({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
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
                padding: const EdgeInsets.only(top: 12.0, left: 10.0, bottom: 7.0),
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
              InkWell(
                onTap: () {
                  _launchKakaoNavi();
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue, // 버튼 색상 설정
                  ),
                  child: Center(
                    child: Text(
                      '카카오 네비게이션 열기',
                      style: TextStyle(
                        color: Colors.white, // 버튼 텍스트 색상 설정
                      ),
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

  void _launchKakaoNavi() async {
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
        // 카카오 네비게이션이 설치되어 있지 않을 때 처리
        // 예를 들어 다른 네비게이션 앱을 열거나 설치 유도 메시지 표시 등
      }
    } catch (e) {
      // 예외 처리
    }
  }
}
