// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final String helptext;
  final bool isObscuretext;
  final Widget? widget;

  AuthField({
    super.key,
    required this.controller,
    required this.helptext,
    this.isObscuretext = false,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: widget,
        hintText: helptext,
        hintStyle: TextStyle(color: Theme.of(context).colorScheme.tertiary),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
