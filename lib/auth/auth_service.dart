import 'package:supabase_flutter/supabase_flutter.dart';


class AuthResult {
  final AuthResponse? data;
  final String? error;

  AuthResult({this.data, this.error});
}

class AuthService {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<AuthResult> signUpWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final res = await _supabase.auth.signUp(
        email: email,
        password: password,
      );
      return AuthResult(data: res, error: null);
    } on AuthException catch (e) {
      return AuthResult(data: null, error: e.message);
    } catch (e) {
      return AuthResult(
          data: null, error: "Something went wrong. Please try again.");
    }
  }


  Future<AuthResult> signInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final res = await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );
      return AuthResult(data:  res, error: null);
    } on AuthException catch (e) {
      return AuthResult(
       data:  null, error:  e.message
      );
    } catch (e) {
      return AuthResult(
        data: null, error: "Something went wrong. Please try again."
      );
    }
  }

  Future<void> signOut() async {
    await _supabase.auth.signOut();
  }

  String? getCurrentUserEmail() {
    final session = _supabase.auth.currentSession;
    return session?.user.email;
  }
}
