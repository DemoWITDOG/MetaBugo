import 'package:flutter/material.dart';
import 'package:metabugo/presentation/providers/minute_provider.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';

class MinutePicker extends StatelessWidget {
  const MinutePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MinuteProvider>(
      builder: (context, minuteProvider, child) {
        int selectedValue = minuteProvider.currentMinute;
        return Column(
          children: [
            NumberPicker(
              value: selectedValue,
              minValue: 0,
              maxValue: 59,
              step: 1,
              haptics: true,
              infiniteLoop: false,
              onChanged: (value) {
                minuteProvider.updateMinute(value);
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
                  onPressed: () => minuteProvider.decrementMinute(),
                ),
                SizedBox(width: 20,),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => minuteProvider.incrementMinute(),
                ),
              ],
            ),
            SizedBox(height: 16,),
            TextButton( // "확인" 버튼 추가
              onPressed: () {
                minuteProvider.updateMinute(selectedValue);
                Navigator.pop(context, selectedValue);
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
