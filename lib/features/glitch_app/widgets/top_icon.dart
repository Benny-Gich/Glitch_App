// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TopIcon extends StatelessWidget {
  Widget? widget;
  TopIcon({super.key, required this.widget, required Null Function() onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: widget);
  }
}
