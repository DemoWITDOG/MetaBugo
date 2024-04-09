import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class CancelModifyDialog extends StatelessWidget {
  const CancelModifyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: 294,
        height: 252,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '취소/수정가능',
                style: TextStyle(
                  fontSize: MediaRes.fontSize22,
                  fontWeight: MediaRes.semiBold,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
              SizedBox(height: 16),
              Text(
                '원하는 메뉴를 선택해 주세요',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: MediaRes.mainBtnColor,
                ),
                child: Text(
                  '부고장 취소하기',
                  style: TextStyle(
                    color: MediaRes.whiteColor,
                    fontFamily: MediaRes.fontPretendard,
                    fontSize: MediaRes.fontSize18,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: MediaRes.blackColor,
                ),
                child: Text(
                  '부고장 수정하기',
                  style: TextStyle(
                    color: MediaRes.whiteColor,
                    fontFamily: MediaRes.fontPretendard,
                    fontSize: MediaRes.fontSize18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
