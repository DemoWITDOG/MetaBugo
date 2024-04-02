import 'package:flutter/material.dart';
import 'package:metabugo/presentation/providers/deceased_gender_provider.dart';
import 'package:metabugo/res/media_res.dart';
import 'package:provider/provider.dart';

class DeceasedInfo extends StatelessWidget {
  const DeceasedInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> genders = ['남자', '여자'];

    return ChangeNotifierProvider(
      create: (_) => DeceasedGenderProvider(),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8,),
            Row(
              children: [
                Text('고인정보',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                  ),
                ),
                Text('(필수)',
                  style: TextStyle(
                    fontSize: MediaRes.fontSize18,
                    fontWeight: MediaRes.medium,
                    color: MediaRes.redText,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    fontSize: MediaRes.fontSize18,
                  ),
                  decoration: InputDecoration(
                    hintText: '고인이름을 입력해 주세요',
                    hintStyle: TextStyle(
                      color: MediaRes.greyColor,
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
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  ),
                ),
                SizedBox(height: 8),
                Consumer<DeceasedGenderProvider>(
                  builder: (context, geceasedGenderProvider, _) {
                    return DropdownButtonHideUnderline(
                      child: Container(
                        height: 56,
                        padding: EdgeInsets.only(left: 15, right: 23),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: MediaRes.textUnderLineColor),
                        ),
                        child: DropdownButton<String>(
                          value: geceasedGenderProvider.selectedGender,
                          hint: Text('성별을 선택해 주세요',
                            style: TextStyle(
                              color: MediaRes.greyColor,
                              fontFamily: MediaRes.fontPretendard,
                              fontSize: MediaRes.fontSize18,
                            ),
                          ),
                          items: genders.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Center(child: Text(value)),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            geceasedGenderProvider.setSelectedGender(newValue);
                          },
                          isExpanded: true,
                          icon: Icon(Icons.arrow_drop_down),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 8),
                TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontWeight: MediaRes.medium,
                    fontFamily: MediaRes.fontPretendard,
                    fontSize: MediaRes.fontSize18,
                  ),
                  decoration: InputDecoration(
                    hintText: '나이를 입력해주세요',
                    hintStyle: TextStyle(
                      color: MediaRes.greyColor,
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
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
