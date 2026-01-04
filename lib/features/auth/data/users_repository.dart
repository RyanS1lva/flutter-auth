import 'package:supabase_flutter/supabase_flutter.dart';

abstract class IUsersRepository {
  Future<void> registerUser({
    required String fullname,
    required String email,
    required String password,
  });
}

final class UsersRepository implements IUsersRepository {
  final SupabaseClient _client;

  UsersRepository({SupabaseClient? client})
    : _client = client ?? Supabase.instance.client;

  @override
  Future<void> registerUser({
    required String fullname,
    required String email,
    required String password,
  }) async {
    try {
      await _client.auth.signUp(
        email: email,
        password: password,
        data: {'fullname': fullname},
      );
    } on AuthException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception('Erro inesperado ao criar conta.');
    }
  }
}
