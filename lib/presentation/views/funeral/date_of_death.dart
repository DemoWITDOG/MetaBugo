import 'package:flutter/material.dart';
import 'package:metabugo/presentation/providers/date_of_death_provider.dart';
import 'package:metabugo/presentation/providers/death_day_provider.dart';
import 'package:metabugo/presentation/providers/hour_provider.dart';
import 'package:metabugo/presentation/providers/minute_provider.dart';
import 'package:metabugo/res/media_res.dart';
import 'package:metabugo/widgets/hour_picker.dart';
import 'package:metabugo/widgets/minute_picker.dart';
import 'package:provider/provider.dart';

class DateOfDeath extends StatelessWidget {
  const DateOfDeath({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dateOfDeathProvider = Provider.of<DateOfDeathProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                '발인일시',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                ),
              ),
              Text(
                '(필수)',
                style: TextStyle(
                  fontSize: MediaRes.fontSize18,
                  fontWeight: MediaRes.medium,
                  color: MediaRes.redText,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
            controller: dateOfDeathProvider.dateController,
            onTap: (){
              dateOfDeathProvider.selectDatePicker(context);
            },
            decoration: InputDecoration(
                hintText: '날짜를 선택해 주세요',
                hintStyle: TextStyle(
                    color: MediaRes.greyColor,
                    fontFamily: MediaRes.fontPretendard,
                    fontSize: MediaRes.fontSize18),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide:
                  BorderSide(color: MediaRes.textUnderLineColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide:
                  BorderSide(color: MediaRes.greyBtnColor),
                )
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: Consumer<HourProvider>(
                  builder: (context, hourProvider, child) {
                    TextEditingController _controller = TextEditingController(text: hourProvider.currentHour != 1 ? hourProvider.currentHour.toString() : '');
                    return Column(
                      children: [
                        TextField(
                          readOnly: true,
                          controller: _controller,
                          onTap: () async {
                            final selectedHour = await showModalBottomSheet<int>(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 300,
                                  child: HourPicker(),
                                );
                              },
                            );
                            if(selectedHour != null) {
                              hourProvider.updateHour(selectedHour);
                              _controller.text = selectedHour.toString();
                            }
                          },
                          decoration: InputDecoration(
                            hintText: '시', // 힌트 텍스트
                            hintStyle: TextStyle(
                              color: MediaRes.textUnderLineColor,
                              fontFamily: MediaRes.fontPretendard,
                              fontSize: MediaRes.fontSize18,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: MediaRes.textUnderLineColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: MediaRes.greyBtnColor),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 12,
                            ),
                            suffixIcon: Icon(Icons.arrow_drop_down),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(width: 8), // 간격 추가
              Expanded(
                child: Consumer<MinuteProvider>(
                  builder: (context, minuteProvider, child) {
                    TextEditingController _controller = TextEditingController(text: minuteProvider.currentMinute != 0 ? minuteProvider.currentMinute.toString() : '');
                    return Column(
                      children: [
                        TextFormField(
                          readOnly: true,
                          controller: _controller,
                          onTap: () async {
                            final selectedMinute = await showModalBottomSheet<int>(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 300,
                                  child: MinutePicker(), // 분 선택 다이얼로그 표시
                                );
                              },
                            );
                            if(selectedMinute != null) {
                              minuteProvider.updateMinute(selectedMinute);
                              _controller.text = selectedMinute.toString();
                            }
                          },
                          decoration: InputDecoration(
                            hintText: '분', // 힌트 텍스트
                            hintStyle: TextStyle(
                              color: MediaRes.textUnderLineColor,
                              fontFamily: MediaRes.fontPretendard,
                              fontSize: MediaRes.fontSize18,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: MediaRes.textUnderLineColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: MediaRes.greyBtnColor),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 12,
                            ),
                            suffixIcon: Icon(Icons.arrow_drop_down),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
