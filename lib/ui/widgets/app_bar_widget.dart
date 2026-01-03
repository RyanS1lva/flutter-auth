import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String title;

  const AppBarWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return AppBar(
      backgroundColor: colors.primary,
      foregroundColor: colors.onPrimary,
      title: Text(title),
      centerTitle: true,
    );
  }
}
