import 'package:flutter/material.dart';

class InActivePageIndicator extends StatelessWidget {
  const InActivePageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 200),
      width: 8,
      height: 8,
      decoration: const BoxDecoration(
        color: Color(0XFFE8E8E8),
        shape: BoxShape.circle,
      ),
    );
  }
}
