import 'package:flutter/material.dart';

import '../../lib.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String? label;
  final String? hint;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;

  const TextFormFieldWidget({
    this.label,
    this.hint,
    this.obscureText,
    this.keyboardType,
    this.validator,
    this.controller,
    this.textInputAction,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      keyboardType: keyboardType ?? TextInputType.text,
      validator: validator,
      controller: controller,
      textInputAction: textInputAction ?? TextInputAction.next,
      decoration: InputDecoration(
        label: Text(label ?? ''),
        hint: Text(hint ?? ''),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.md),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.md),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.md),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
        ),
      ),
    );
  }
}
