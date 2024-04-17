
import 'package:flutter/material.dart';

class FuneralSearchProvider extends ChangeNotifier {
  String _searchKeyword = ''; // 검색어 저장 변수
  bool _isSearching = false; // 검색 여부를 나타내는 변수

  // Getter 메서드
  String get searchKeyword => _searchKeyword;
  bool get isSearching => _isSearching;

  // Setter 메서드
  void setSearchKeyword(String keyword) {
    _searchKeyword = keyword;
    notifyListeners(); // 상태 변경을 알림
  }

  void setIsSearching(bool searching) {
    _isSearching = searching;
    notifyListeners(); // 상태 변경을 알림
  }
}