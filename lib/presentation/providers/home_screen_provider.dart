import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:metabugo/res/media_res.dart';

class HomeScreenProvider extends ChangeNotifier {
  Color _textUnderLineColor1 = MediaRes.textUnderLineColor;
  Color _textUnderLineColor2 = MediaRes.textUnderLineColor;
  Color _textUnderLineColor3 = MediaRes.textUnderLineColor;

  // 상태에 대한 getter
  Color get textUnderLineColor1 => _textUnderLineColor1;
  Color get textUnderLineColor2 => _textUnderLineColor2;
  Color get textUnderLineColor3 => _textUnderLineColor3;

  void resetButtonState(int buttonIndex) {
    switch (buttonIndex) {
      case 1:
        if (_textUnderLineColor1 != MediaRes.textUnderLineColor) {
          _textUnderLineColor1 = MediaRes.textUnderLineColor;
          notifyListeners();
        }
        break;
      case 2:
        if (_textUnderLineColor2 != MediaRes.textUnderLineColor) {
          _textUnderLineColor2 = MediaRes.textUnderLineColor;
          notifyListeners();
        }
        break;
      case 3:
        if (_textUnderLineColor3 != MediaRes.textUnderLineColor) {
          _textUnderLineColor3 = MediaRes.textUnderLineColor;
          notifyListeners();
        }
        break;
      default:
        break;
    }
  }

  // 상태 변경 메서드
  void updateTextUnderLineColor1(Color color) {
    _textUnderLineColor1 = color;
    notifyListeners();
  }

  void updateTextUnderLineColor2(Color color) {
    _textUnderLineColor2 = color;
    notifyListeners();
  }

  void updateTextUnderLineColor3(Color color) {
    _textUnderLineColor3 = color;
    notifyListeners();
  }
}
