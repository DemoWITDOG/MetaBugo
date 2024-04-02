import 'package:flutter/cupertino.dart';

class DeceasedGenderProvider with ChangeNotifier {
  String? _selectedGender;

  String? get selectedGender => _selectedGender;

  void setSelectedGender(String? gender) {
    _selectedGender = gender;
    notifyListeners();
  }
}