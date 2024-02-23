import 'package:flutter/material.dart';

class ActivePageIndicator extends StatelessWidget {
  const ActivePageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 8,
      decoration: BoxDecoration(
        color: const Color(0XFF4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
