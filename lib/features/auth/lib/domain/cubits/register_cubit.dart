import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:core/lib.dart';

import '../../lib.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> with SafeCubit<RegisterState> {
  final IUserRepository _repository;

  RegisterCubit(this._repository) : super(RegisterInitial());

  Future<void> registerUser({
    required String fullname,
    required String email,
    required String password,
  }) async {
    safeEmit(RegisterLoading());

    try {
      await _repository.register(
        fullname: fullname,
        email: email,
        password: password,
      );
      safeEmit(RegisterSuccess());
    } catch (e) {
      safeEmit(RegisterError(e.toString()));
    }
  }
}
