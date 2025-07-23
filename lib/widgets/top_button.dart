// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TopButton extends StatelessWidget {
  Widget? widget;
  TopButton({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(15),
      ),
      child: widget,
    );
  }
}
