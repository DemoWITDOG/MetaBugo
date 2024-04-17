import 'package:flutter/material.dart';
import 'package:metabugo/data/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthViewModel extends ChangeNotifier {
  final supabaseClient = Supabase.instance.client;

  UserModel? _loggedInUser;

  UserModel? get loggedInUser => _loggedInUser;

  // 로그인 기능
  Future<void> login(String userPhone) async {
    try {
      final response = await supabaseClient
          .from('auth_phone')
          .select()
          .eq('user_phone', userPhone);

      print('user_phone : ${response}');

      if (response != null && response.length > 0) {
        final user = response[0];
        _loggedInUser = UserModel(
          id: user['id'],
          userPhone: userPhone,
          createdAt: DateTime.now(),
        );
        notifyListeners();
      } else {
        print('전화번호에 해당하는 사용자가 없습니다.');
      }
    } catch (e) {
      print('로그인 중 오류가 발생했습니다: $e');
    }
  }

  // 회원 가입 기능
  Future<void> signUp(String userPhone) async {
    try {
      final response = await supabaseClient.from('auth_phone').insert({'user_phone':userPhone});
      print('signUp ${response}');
      if(response == null) {
        print('회원가입 성공 : ${response}');
      } else {
        print('회원가입 실패 : ${response}');
      }
    } catch (e) {
      print('회원 가입 중 오류가 발생했습니다: ${e}');
    }
  }

  // 로그아웃 기능
  Future<void> logout() async {
    try {
      // 로컬 상태 업데이트
      _loggedInUser = null;
      notifyListeners();

    } catch (e) {
      print('로그아웃 중 오류가 발생했습니다: $e');
    }
  }
}