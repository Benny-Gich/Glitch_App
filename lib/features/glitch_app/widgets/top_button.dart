// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TopButton extends StatelessWidget {
  final Widget? child;
  TopButton({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        //color: Colors.black12,
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
