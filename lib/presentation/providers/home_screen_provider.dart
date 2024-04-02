import 'package:flutter/material.dart';

import 'package:metabugo/res/media_res.dart';

class HomeScreenProvider extends ChangeNotifier {
  // 버튼의 눌린 상태를 표시하기 위한 MaterialStateColor를 정의합니다.
  List<MaterialStateColor> _textUnderLineColors = List.generate(3, (index) => MaterialStateColor.resolveWith((states) {
    if (states.contains(MaterialState.pressed)) {
      return MediaRes.selectColor;
    }
    return MediaRes.textUnderLineColor;
  }));

  List<MaterialStateColor> _textColors = List.generate(3, (index) => MaterialStateColor.resolveWith((states) {
    if (states.contains(MaterialState.pressed)) {
      return MediaRes.selectColor;
    }
    return MediaRes.blackColor;
  }));

  // 상태에 대한 getter
  MaterialStateColor get textUnderLineColor1 => _textUnderLineColors[0];
  MaterialStateColor get textUnderLineColor2 => _textUnderLineColors[1];
  MaterialStateColor get textUnderLineColor3 => _textUnderLineColors[2];

  MaterialStateColor get textColor1 => _textColors[0];
  MaterialStateColor get textColor2 => _textColors[1];
  MaterialStateColor get textColor3 => _textColors[2];

  // 상태 변경 메서드
  void updateTextUnderLineColor1(Color color) {
    _textUnderLineColors[0] = MaterialStateColor.resolveWith((states) => color);
    _textColors[0] = MaterialStateColor.resolveWith((states) => color);
    notifyListeners();
  }

  void updateTextUnderLineColor2(Color color) {
    _textUnderLineColors[1] = MaterialStateColor.resolveWith((states) => color);
    _textColors[1] = MaterialStateColor.resolveWith((states) => color);
    notifyListeners();
  }

  void updateTextUnderLineColor3(Color color) {
    _textUnderLineColors[2] = MaterialStateColor.resolveWith((states) => color);
    notifyListeners();
  }

  // 모든 버튼의 색상을 초기화하는 메서드
  void resetColors() {
    _textUnderLineColors = List.generate(3, (index) => MaterialStateColor.resolveWith((states) => MediaRes.textUnderLineColor));
    _textColors = List.generate(3, (index) => MaterialStateColor.resolveWith((states) => MediaRes.blackColor));
    notifyListeners();
  }
}

