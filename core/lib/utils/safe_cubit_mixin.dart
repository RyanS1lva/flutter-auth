import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin SafeCubit<State> on Cubit<State> {
  @protected
  @visibleForTesting
  void safeEmit(State state) {
    if (isClosed) return;
    emit(state);
  }
}
