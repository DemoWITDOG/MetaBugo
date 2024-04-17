import 'package:flutter/material.dart';
import 'package:metabugo/presentation/views/guest_list.dart';
import 'package:metabugo/presentation/views/money_list.dart';
import 'package:metabugo/res/media_res.dart';

class ManageFuneral extends StatelessWidget {
  const ManageFuneral({super.key});

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
        title: Text(
          '장례식장 관리하기',
          style: TextStyle(
            color: MediaRes.blackColor,
            fontWeight: MediaRes.medium,
            fontSize: MediaRes.fontSize20,
          ),
        ),
        titleSpacing: 0,
      ),
      body: Container(
        color: MediaRes.whiteColor,
        child: Padding(
          padding: EdgeInsets.only(top: 12, left: 16, right: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 34.0),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'IMG Section',
                        style: TextStyle(
                          color: MediaRes.textUnderLineColor,
                        ),
                      ),
                      width: 60,
                      height: 73,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MoneyList(),
                          ));
                    },
                    child: Text('부고함 관리하기',
                        style: TextStyle(
                            fontSize: MediaRes.fontSize20,
                            fontWeight: MediaRes.medium,
                            fontFamily: MediaRes.fontPretendard,
                            color: MediaRes.blackBtnColor)),
                  )
                ],
              ),
              Divider(
                height: 0,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 34.0),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'IMG Section',
                        style: TextStyle(
                          color: MediaRes.textUnderLineColor,
                        ),
                      ),
                      width: 60,
                      height: 73,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('영정사진 관리하기',
                        style: TextStyle(
                            fontSize: MediaRes.fontSize20,
                            fontWeight: MediaRes.medium,
                            fontFamily: MediaRes.fontPretendard,
                            color: MediaRes.blackBtnColor)),
                  )
                ],
              ),
              Divider(
                height: 0,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 34.0),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'IMG Section',
                        style: TextStyle(
                          color: MediaRes.textUnderLineColor,
                        ),
                      ),
                      width: 60,
                      height: 73,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GuestList(),
                          ));
                    },
                    child: Text('방명록 관리하기',
                        style: TextStyle(
                            fontSize: MediaRes.fontSize20,
                            fontWeight: MediaRes.medium,
                            fontFamily: MediaRes.fontPretendard,
                            color: MediaRes.blackBtnColor)),
                  )

                ],

              ),
              Divider(
                height: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
