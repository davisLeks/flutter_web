import 'package:fitness/constants/constants.dart';

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
          color: cardBackgroundColor,
        ),
        child: child,
      ),
    );
  }
}
