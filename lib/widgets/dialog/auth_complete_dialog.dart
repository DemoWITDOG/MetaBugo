import 'package:flutter/material.dart';
import 'package:metabugo/presentation/views/funeral/funeral_screen.dart';
import 'package:metabugo/presentation/views/signUp/privacy/privacy_agreement_modal.dart';
import 'package:metabugo/res/media_res.dart';

class AuthCompleteDialog extends StatelessWidget {
  const AuthCompleteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: 294,
        height: 180,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '인증완료',
                style: TextStyle(
                  fontSize: MediaRes.fontSize22,
                  fontWeight: MediaRes.semiBold,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
              SizedBox(height: 16),
              Text(
                '인증이 완료되었습니다',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blackColor,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FuneralScreen()));
                 //Navigator.push(context, MaterialPageRoute(builder: MaterialPageRoute))
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: MediaRes.blackColor,
                ),
                child: Text(
                  '확인',
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
