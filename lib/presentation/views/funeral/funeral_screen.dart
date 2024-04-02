import 'package:flutter/material.dart';
import 'package:metabugo/presentation/views/funeral/deceased_info.dart';
import 'package:metabugo/presentation/views/funeral/mourner_info.dart';
import 'package:metabugo/res/media_res.dart';

class FuneralScreen extends StatelessWidget {
  const FuneralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_arrow_left)),
        title: Text(
          '부고장 작성하기',
          style: TextStyle(
              color: MediaRes.blackColor,
              fontWeight: MediaRes.medium,
              fontSize: MediaRes.fontSize20),
        ),
        titleSpacing: 0,
      ),
      body: Column(
        children: [
          MournerInfo(),
          DeceasedInfo(),
        ],
      ),
    );
  }
}
