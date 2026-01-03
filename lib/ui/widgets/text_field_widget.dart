import 'package:flutter/material.dart';

import '../../lib.dart';

class TextFieldWidget extends StatelessWidget {
  final String? label;
  final String? hint;

  const TextFieldWidget({this.label, this.hint, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
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
