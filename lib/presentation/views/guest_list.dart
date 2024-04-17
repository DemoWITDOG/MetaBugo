import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class GuestList extends StatelessWidget {
  const GuestList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left),
        ),
        title: Text(
          '방명록내역',
          style: TextStyle(
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w500,
            fontSize: MediaRes.fontSize20,
          ),
        ),
        titleSpacing: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            child: Image.asset(
              MediaRes.guest_book,
              fit: BoxFit.fill,
            ),
            width: double.infinity,
          ),
          Container(
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '김희나',
                                style: TextStyle(
                                  fontFamily: MediaRes.fontPretendard,
                                  fontWeight: MediaRes.medium,
                                  fontSize: MediaRes.fontSize18,
                                ),
                              ),
                              Row(
                                children: [
                                  Text('2024년04월02일 오후12시56분',
                                      style: TextStyle(
                                          fontFamily: MediaRes.fontPretendard,
                                          fontWeight: MediaRes.regular,
                                          fontSize: MediaRes.fontSize14,
                                          color: MediaRes.greyTextSearch)),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text('왔다감',
                                      style: TextStyle(
                                          fontFamily: MediaRes.fontPretendard,
                                          fontWeight: MediaRes.regular,
                                          fontSize: MediaRes.fontSize14,
                                          color: MediaRes.greyTextSearch)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                            right: 16.0,
                          ),
                          child: Divider(
                            color: MediaRes.textUnderLineColor,
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
