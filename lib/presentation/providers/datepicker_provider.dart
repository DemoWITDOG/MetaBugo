import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerProvider with ChangeNotifier {
  TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;

  TextEditingController get dateController => _dateController;

  DateTime? get selectedDate => _selectedDate;

  Future<void> selectDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context, firstDate: DateTime(1900), lastDate: DateTime.now());

    if (picked != null && picked != _selectedDate) {
      _selectedDate = picked;
      _dateController.text =
          DateFormat('yyyy/MM/dd').format(picked); // 선택된 날짜를 텍스트 필드에 표시
      notifyListeners();
    }
  }
}
