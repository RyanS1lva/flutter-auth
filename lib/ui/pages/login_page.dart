import 'package:flutter/material.dart';

import '../../lib.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.md),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TitleWidget(title: 'Login'),
              const SizedBox(height: AppSizes.xxl),
              TextFieldWidget(label: 'E-mail'),
              const SizedBox(height: AppSizes.md),
              TextFieldWidget(label: 'Senha'),
              const SizedBox(height: AppSizes.lg),
              SizedBox(
                height: AppSizes.buttonHeight,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Acessar'),
                      const SizedBox(width: AppSizes.md),
                      Icon(Icons.login),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: AppSizes.sm),
              TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, AppRoutes.register),
                style: TextButton.styleFrom(alignment: Alignment.center),
                child: Text(
                  'registrar-se',
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: AppSizes.md,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
