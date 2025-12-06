import 'package:flutter/material.dart';

import '../auth_service.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();

  bool _loading = false;
  bool get loading => _loading;

  Future<bool> signUp({required String email, required String password}) async {
    try {
      _loading = true;
      notifyListeners();

      final response = await _authService.signUpWithEmailPassword(
        email: email,
        password: password,
      );

      _loading = false;
      notifyListeners();

      return response.data != null;
    } catch (e) {
      _loading = false;
      notifyListeners();
      return false;
    }
  }

  Future<bool> signIn({required String email, required String password}) async {
    try {
      _loading = true;
      notifyListeners();

      final response = await _authService.signInWithEmailPassword(
        email: email,
        password: password,
      );

      _loading = false;
      notifyListeners();

      return response.data != null;
    } catch (e) {
      _loading = false;
      notifyListeners();
      return false;
    }
  }
}
