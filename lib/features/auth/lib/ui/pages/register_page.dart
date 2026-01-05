import 'package:flutter/material.dart';

import 'package:core/lib.dart';

import '../../lib.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with FormValidatorMixin {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  late final RegisterCubit _cubit;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TitleWidget(title: 'Registrar-se'),
                  SizedBox(height: AppSizes.xxl),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormFieldWidget(
                          label: 'Nome completo',
                          controller: _nameController,
                          validator: isNotEmpty,
                        ),
                        SizedBox(height: AppSizes.md),
                        TextFormFieldWidget(
                          label: 'E-mail',
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          validator: (value) => combine([
                            () => isNotEmpty(value),
                            () => isEmail(value),
                          ]),
                        ),
                        SizedBox(height: AppSizes.md),
                        TextFormFieldWidget(
                          label: 'Senha',
                          obscureText: true,
                          controller: _passwordController,
                          validator: (value) => combine([
                            () => isNotEmpty(value),
                            () => hasMinChars(value, 8),
                          ]),
                        ),
                        SizedBox(height: AppSizes.md),
                        TextFormFieldWidget(
                          label: 'Confirmar senha',
                          obscureText: true,
                          controller: _confirmPasswordController,
                          validator: (value) => hasEqualPasswords(
                            value,
                            _passwordController.text,
                          ),
                          textInputAction: TextInputAction.done,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: AppSizes.lg),
                  SizedBox(
                    height: AppSizes.buttonHeight,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        _formKey.currentState!.validate();
                      },
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
                    onPressed: () => Navigator.pushReplacementNamed(
                      context,
                      AuthFeature.login,
                    ),
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
        ),
      ),
    );
  }
}
