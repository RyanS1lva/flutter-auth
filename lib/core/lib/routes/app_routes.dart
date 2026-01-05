import 'package:flutter/material.dart';

import '../../../lib.dart';

class AppRoutes {
  static const String login = '/';
  static const String register = '/register';

  static Map<String, WidgetBuilder> getAll() {
    return {
      login: (context) => LoginPage(),
      register: (context) => RegisterPage(),
    };
  }
}
