import 'package:flutter/material.dart';

class MovieTab extends StatelessWidget {
  Widget? widget;
  MovieTab({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 72,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Center(child: widget),
    );
  }
}
