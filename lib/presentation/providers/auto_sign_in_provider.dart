import 'package:flutter/material.dart';

class AutoSignInProvider with ChangeNotifier {
  bool _isChecked = false;

  bool get isChecked => _isChecked;

  void setIsChecked(bool value) {
    _isChecked = value;
    notifyListeners();
  }
}
