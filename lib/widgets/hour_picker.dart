import 'package:flutter/material.dart';
import 'package:metabugo/presentation/providers/hour_provider.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';

class HourPicker extends StatelessWidget {
  const HourPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HourProvider>(
      builder: (context, hourProvider, child) {
        int selectedValue = hourProvider.currentHour;
        return Column(
          children: [
            NumberPicker(
              value: selectedValue,
              minValue: 1,
              maxValue: 24,
              step: 1,
              haptics: true,
              infiniteLoop: false,
              onChanged: (value) {
                hourProvider.updateHour(value);
                selectedValue = value;
              },
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () => hourProvider.decrementHour(),
                ),
                SizedBox(width: 20,),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => hourProvider.incrementHour(),
                ),
              ],
            ),
            SizedBox(height: 16,),
            TextButton( // "확인" 버튼 추가
              onPressed: () {
                hourProvider.updateHour(selectedValue); // 선택된 값 업데이트
                Navigator.pop(context, selectedValue); // 다이얼로그 닫기
              },
              child: Text(
                '확인',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
