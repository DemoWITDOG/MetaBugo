import 'package:flutter/material.dart';

class MinuteProvider with ChangeNotifier {
  int _currentMinute = 0;

  int get currentMinute => _currentMinute;

  void updateMinute(int newValue) {
    _currentMinute = newValue;
    notifyListeners();
  }

  void incrementMinute() {
    final newValue = _currentMinute + 1;
    _currentMinute = newValue.clamp(0, 59);
    notifyListeners();
  }

  void decrementMinute() {
    final newValue = _currentMinute - 1;
    _currentMinute = newValue.clamp(0, 59);
    notifyListeners();
  }
}