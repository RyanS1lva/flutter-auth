import 'package:supabase_flutter/supabase_flutter.dart';

abstract class IUserRepository {
  Future<void> register({
    required String fullName,
    required String email,
    required String password,
  });
}

class UserRepository implements IUserRepository {
  final SupabaseClient _client;

  UserRepository(this._client);

  @override
  Future<void> register({
    required String fullName,
    required String email,
    required String password,
  }) async {
    try {
      await _client.auth.signUp(
        email: email,
        password: password,
        data: {'full_name': fullName},
      );
    } on AuthException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception('Erro ao registrar: $e');
    }
  }
}
