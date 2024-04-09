import 'package:flutter/cupertino.dart';

class AccountAddProvider with ChangeNotifier {
  int _widgetCount = 1;

  int get widgetCount => _widgetCount;

  void incrementWidgetCount() {
    _widgetCount++;
    notifyListeners();
  }
}