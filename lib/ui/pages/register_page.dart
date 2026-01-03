import 'package:flutter/material.dart';

import '../../lib.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TitleWidget(title: 'Registrar-se'),
              SizedBox(height: AppSizes.xxl),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFieldWidget(label: 'Nome completo'),
                    SizedBox(height: AppSizes.md),
                    TextFieldWidget(
                      label: 'E-mail',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: AppSizes.md),
                    TextFieldWidget(label: 'Senha', obscureText: true),
                    SizedBox(height: AppSizes.md),
                    TextFieldWidget(
                      label: 'Confirmar senha',
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppSizes.lg),
              SizedBox(
                height: AppSizes.buttonHeight,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Registrar'),
                      const SizedBox(width: AppSizes.md),
                      Icon(Icons.app_registration),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: AppSizes.sm),
              TextButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, AppRoutes.login),
                style: TextButton.styleFrom(alignment: Alignment.center),
                child: Text(
                  'Já possuo uma conta',
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
