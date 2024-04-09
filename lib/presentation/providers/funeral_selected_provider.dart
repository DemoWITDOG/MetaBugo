import 'package:flutter/foundation.dart';

class FuneralSelectedProvider with ChangeNotifier {
  bool _isChecked = false;
  bool get isChecked => _isChecked;

  void updateCheckbox(bool? value) {
    _isChecked = value ?? false;
    notifyListeners();
  }
}
