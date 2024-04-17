import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class BugoPreViewTitle extends StatelessWidget {
  const BugoPreViewTitle({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      color: MediaRes.bugoPannel,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '모바일 부고',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize24,
                    fontWeight: MediaRes.medium,
                    color: MediaRes.whiteColor,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  '하늘장례식장',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    color: MediaRes.whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
