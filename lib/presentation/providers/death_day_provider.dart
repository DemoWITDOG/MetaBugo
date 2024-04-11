import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DeathDayProvider with ChangeNotifier {
  TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;

  int _currentIntValue = 1;

  TextEditingController get dateController => _dateController;
  DateTime? get selectedDate => _selectedDate;
  int get currentIntValue => _currentIntValue;

  Future<void> selectDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _selectedDate) {
      _selectedDate = picked;
      _dateController.text = DateFormat('yyyy-MM-dd').format(picked);
      notifyListeners();
    }
  }

  void updateIntValue(int newValue) {
    _currentIntValue = newValue;
    notifyListeners();
  }

  void incrementIntValue() {
    final newValue = _currentIntValue + 1;
    _currentIntValue = newValue.clamp(00, 100);
    notifyListeners();
  }

  void decrementIntValue() {
    final newValue = _currentIntValue - 1;
    _currentIntValue = newValue.clamp(00, 100);
    notifyListeners();
  }

}
