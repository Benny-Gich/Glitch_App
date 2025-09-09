// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  String buttonText;
  final VoidCallback onPressed;
  final Widget? widget;
  AuthButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.outline,
      ),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(350, 50),
          //backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        onPressed: onPressed,
        label: Text(buttonText, style: Theme.of(context).textTheme.bodyMedium),
        icon: widget,
      ),
    );
  }
}
