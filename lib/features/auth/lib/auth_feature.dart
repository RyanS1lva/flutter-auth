import 'package:flutter/widgets.dart';

import 'lib.dart';

class AuthFeature {
  static const String login = '/';
  static const String register = '/register';

  static Map<String, WidgetBuilder> routes() {
    return {
      login: (context) => const LoginPage(),
      register: (context) => const RegisterPage(),
    };
  }
}
