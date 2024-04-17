import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class BugoPreviewFuneralInfo extends StatelessWidget {
  const BugoPreviewFuneralInfo({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              SizedBox(
                height: 32,
              ),
              Text(
                '상주',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '홍하늘',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
            ],
          ),
          Divider(
            color: MediaRes.textUnderLineColor,
          ),
          Row(
            children: [
              SizedBox(
                height: 32,
              ),
              Text(
                '빈소',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '하늘가장례식장',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
              Text(
                '101호',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
            ],
          ),
          Divider(
            color: MediaRes.textUnderLineColor,
          ),
          Row(
            children: [
              SizedBox(
                height: 32,
              ),
              Text(
                '발인',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '2024-01-06 (토요일 11시 00분)',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
            ],
          ),
          Divider(
            color: MediaRes.textUnderLineColor,
          ),
          Row(
            children: [
              SizedBox(
                height: 32,
              ),
              Text(
                '장지',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '양평공원',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
            ],
          ),
          Divider(
            color: MediaRes.textUnderLineColor,
          ),
          SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}
