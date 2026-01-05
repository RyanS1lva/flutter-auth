import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

import 'lib.dart';

final class AuthFeature {
  static const String login = '/';
  static const String register = '/register';
  static const String dashboard = '/dashboard';

  static Map<String, WidgetBuilder> routes() {
    return {
      login: (context) => const LoginPage(),
      register: (context) => const RegisterPage(),
      dashboard: (context) => const DashboardPage(),
    };
  }

  void injectDependencies(GetIt getIt) {
    getIt.registerLazySingleton<IUserRepository>(
      () => UserRepository(getIt.get()),
    );

    getIt.registerFactory<RegisterCubit>(
      () => RegisterCubit(repository: getIt.get<IUserRepository>()),
    );
  }
}
