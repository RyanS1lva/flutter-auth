import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../../../lib.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.md),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TitleWidget(title: 'Login'),
                  const SizedBox(height: AppSizes.xxl),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormFieldWidget(
                          label: 'E-mail',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: AppSizes.md),
                        TextFormFieldWidget(label: 'Senha', obscureText: true),
                      ],
                    ),
                  ),
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
                      'Registrar-se',
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
        ),
      ),
    );
  }
}
