import 'package:flutter/material.dart';
import 'package:metabugo/presentation/providers/death_day_provider.dart';
import 'package:metabugo/presentation/views/funeral/burial_ground.dart';
import 'package:metabugo/presentation/views/funeral/death_day.dart';
import 'package:metabugo/presentation/views/funeral/date_of_death.dart';
import 'package:metabugo/presentation/views/funeral/deceased_info.dart';
import 'package:metabugo/presentation/views/funeral/funeral_parlor.dart';
import 'package:metabugo/presentation/views/funeral/message_mourners.dart';
import 'package:metabugo/presentation/views/funeral/mourner_info.dart';
import 'package:metabugo/res/media_res.dart';
import 'package:metabugo/widgets/dialog/mourner_add_dialog.dart';
import 'package:provider/provider.dart';

class FuneralScreen extends StatelessWidget {
  const FuneralScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DeathDayProvider()),
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MediaRes.whiteColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_arrow_left),
          ),
          title: Text(
            '부고 작성하기',
            style: TextStyle(
              color: MediaRes.blackColor,
              fontWeight: MediaRes.medium,
              fontSize: MediaRes.fontSize20,
            ),
          ),
          titleSpacing: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: MediaRes.whiteColor,
            child: Column(
              children: [
                MournerInfo(),
                DeceasedInfo(),
                DeathDay(),
                DateOfDeath(),
                FuneralParlor(),
                BurialGround(),
                MessageMourners(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    backgroundColor: MediaRes.blackBtnColor,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return MournerAddDialog();
                      },
                    );
                    // 버튼을 눌렀을 때 수행할 동작
                  },
                  child: Text(
                    '다음',
                    style: TextStyle(
                      fontSize: MediaRes.fontSize18,
                      fontWeight: MediaRes.semiBold,
                      fontFamily: MediaRes.fontPretendard,
                      color: MediaRes.whiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
