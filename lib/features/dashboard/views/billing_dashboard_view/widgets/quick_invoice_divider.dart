import 'package:flutter/material.dart';

class QuickInvoiceDivider extends StatelessWidget {
  const QuickInvoiceDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      margin: const EdgeInsets.symmetric(vertical: 24),
      color: const Color(0XFFF1F1F1),
    );
  }
}
