import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final SupabaseClient _supabase = Supabase.instance.client;


  Future<AuthResponse> signUpWithEmailPassword({
    required String email,
    required String password,
  }) async {
    return await _supabase.auth.signUp(email: email, password: password);
  }


  Future<AuthResponse> signInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    return await _supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }


Future<void> signOut() async{
    await _supabase.auth.signOut();
}

String? getCurrentUserEmail() {
    final session = _supabase.auth.currentSession;
    final currentUser = session?.user;
    return currentUser?.email;
}

}
