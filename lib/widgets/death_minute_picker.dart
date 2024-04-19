import 'package:flutter/material.dart';
import 'package:metabugo/presentation/providers/death_min_provider.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';

class DeathMinutePicker extends StatelessWidget {
  const DeathMinutePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DeathMinProvider>(
      builder: (context, deathMinProvider, child) {
        int selectedValue = deathMinProvider.currentMinute;
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
                deathMinProvider.updateMinute(value);
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
                  onPressed: () => deathMinProvider.decrementMinute(),
                ),
                SizedBox(width: 20,),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => deathMinProvider.incrementMinute(),
                ),
              ],
            ),
            SizedBox(height: 16,),
            TextButton( // "확인" 버튼 추가
              onPressed: () {
                deathMinProvider.updateMinute(selectedValue);
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
