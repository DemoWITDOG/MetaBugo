import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class BugoPreviewSubtitle extends StatelessWidget {
  const BugoPreviewSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 23,
          ),
          Text(
            '2024-01-03 별세',
            style: TextStyle(
              fontFamily: MediaRes.fontPretendard,
              fontSize: MediaRes.fontSize18,
              fontWeight: MediaRes.medium,
              color: MediaRes.blackColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '故 홍길동 (87세/남)',
            style: TextStyle(
              fontFamily: MediaRes.fontPretendard,
              fontSize: MediaRes.fontSize24,
              fontWeight: MediaRes.medium,
              color: MediaRes.blackColor,
            ),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
