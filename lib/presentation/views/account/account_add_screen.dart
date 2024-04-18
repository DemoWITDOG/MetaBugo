import 'package:flutter/material.dart';
import 'package:metabugo/presentation/providers/account_add_provider.dart';
import 'package:metabugo/presentation/views/account/surcharge_account_registration.dart';
import 'package:metabugo/res/media_res.dart';
import 'package:provider/provider.dart';

class AccountAddScreen extends StatelessWidget {
  const AccountAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MediaRes.whiteColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '계좌번호 추가',
                style: TextStyle(
                  color: MediaRes.blackColor,
                  fontWeight: MediaRes.medium,
                  fontSize: MediaRes.fontSize20,
                ),
              ),
              InkWell(
                onTap: () {
                  Provider.of<AccountAddProvider>(context, listen: false)
                      .incrementWidgetCount();
                },
                child: Text(
                  '계좌추가',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    color: MediaRes.blueText,
                  ),
                ),
              )
            ],
          ),
        ),
        titleSpacing: 0,
      ),
      body: Container(
        color: MediaRes.whiteColor,
        child: Column(
          children: [
            Expanded(
              child: Consumer<AccountAddProvider>(
                builder: (context, provider, _) {
                  return ListView.builder(
                    itemCount: provider.widgetCount,
                    itemBuilder: (context, index) {
                      return Container(
                        color: MediaRes.whiteColor,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 22.0),
                          child: SurchargeAccountRegistration(),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // 버튼을 눌렀을 때 수행할 동작
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                backgroundColor: MediaRes.blackBtnColor,
              ),
              child: Text(
                '다음',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.semiBold,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
