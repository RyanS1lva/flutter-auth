import 'package:flutter/material.dart';

import '../../lib.dart';

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: AppSizes.xl,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
