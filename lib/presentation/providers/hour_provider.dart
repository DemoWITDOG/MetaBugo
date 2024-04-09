import 'package:flutter/material.dart';

class HourProvider with ChangeNotifier {
  int _currentHour = 1;

  int get currentHour => _currentHour;

  void updateHour(int newValue) {
    _currentHour = newValue;
    notifyListeners();
  }

  void incrementHour() {
    final newValue = _currentHour + 1;
    _currentHour = newValue.clamp(1, 24); // 최소값과 최대값 사이로 제한
    notifyListeners();
  }

  void decrementHour() {
    final newValue = _currentHour - 1;
    _currentHour = newValue.clamp(1, 24); // 최소값과 최대값 사이로 제한
    notifyListeners();
  }
}