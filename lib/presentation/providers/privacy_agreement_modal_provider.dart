import 'package:flutter/material.dart';

class PrivacyAgreementModalProvider with ChangeNotifier {
  bool? _checkBox = false;

  bool? get checkBox => _checkBox;

  // TODO : 개인정보 동의 내역에 대한 checkBox 상태 변화에 대한 각각의 provider 코드 작성이 필요한 부분
  void privacyAgreementCheck(bool checked) {

  }
}