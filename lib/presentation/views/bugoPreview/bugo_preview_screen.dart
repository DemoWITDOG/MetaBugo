import 'package:flutter/material.dart';
import 'package:metabugo/presentation/views/bugoPreview/bugo_preview_funeral_info.dart';
import 'package:metabugo/presentation/views/bugoPreview/bugo_preview_navi.dart';
import 'package:metabugo/presentation/views/bugoPreview/bugo_preview_send_message.dart';
import 'package:metabugo/presentation/views/bugoPreview/bugo_preview_subtitle.dart';
import 'package:metabugo/presentation/views/bugoPreview/bugo_preview_title.dart';
import 'package:metabugo/presentation/views/send_way_modal.dart';
import 'package:metabugo/res/media_res.dart';

class BugoPreViewScreen extends StatelessWidget {
  const BugoPreViewScreen({Key? key});

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
          padding: const EdgeInsets.only(right: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '부고 미리보기',
                style: TextStyle(
                  color: MediaRes.blackColor,
                  fontWeight: MediaRes.medium,
                  fontSize: MediaRes.fontSize20,
                ),
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return SendWayModal();
                    },
                  );
                },
                child: Text(
                  '보내기',
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
      body: SingleChildScrollView(
        child: Container(
          color: MediaRes.whiteColor,
          child: Column(
            children: [
              BugoPreViewTitle(),
              BugoPreviewSubtitle(),
              BugoPreviewFuneralInfo(),
              BugoPreviewNavi(),
              BugoPreviewSendMessage(),
            ],
          ),
        ),
      ),
    );
  }
}
