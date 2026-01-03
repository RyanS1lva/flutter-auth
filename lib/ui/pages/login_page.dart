import 'package:flutter/material.dart';

import '../../lib.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.md),
          child: Placeholder(),
        ),
      ),
    );
  }
}
