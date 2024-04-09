import 'package:flutter/material.dart';
import 'package:metabugo/presentation/providers/funeral_selected_provider.dart';
import 'package:metabugo/res/media_res.dart';
import 'package:provider/provider.dart';

class FuneralSelectedScreen extends StatelessWidget {
  const FuneralSelectedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var selectedProvider = Provider.of<FuneralSelectedProvider>(context);

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
                '부고장 선택하기',
                style: TextStyle(
                  color: MediaRes.blackColor,
                  fontWeight: MediaRes.medium,
                  fontSize: MediaRes.fontSize20,
                ),
              ),
              Text(
                '다음',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  fontFamily: MediaRes.fontPretendard,
                  color: MediaRes.blueText,
                ),
              )
            ],
          ),
        ),
        titleSpacing: 0,
      ),
      body: Container(
        color: MediaRes.whiteColor,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      MediaRes.candle,
                      height: 53,
                      width: 53,
                      fit: BoxFit.fill,
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '하늘장례식장',
                        style: TextStyle(
                          fontSize: MediaRes.fontSize18,
                          fontWeight: MediaRes.medium,
                          fontFamily: MediaRes.fontPretendard,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '故',
                            style: TextStyle(
                              fontSize: MediaRes.fontSize14,
                              fontWeight: MediaRes.medium,
                              fontFamily: MediaRes.fontPretendard,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '(홍길동 (87/남)',
                            style: TextStyle(
                              fontSize: MediaRes.fontSize14,
                              fontWeight: MediaRes.medium,
                              fontFamily: MediaRes.fontPretendard,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing: Checkbox(
                    visualDensity: VisualDensity.standard,
                    value: selectedProvider.isChecked,
                    onChanged: (bool? value) {
                      selectedProvider.updateCheckbox(value);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Divider(
                    indent: 1,
                    color: MediaRes.textUnderLineColor,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
