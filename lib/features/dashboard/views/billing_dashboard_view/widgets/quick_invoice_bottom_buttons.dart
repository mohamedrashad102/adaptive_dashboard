import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'custom_text_button.dart';

class QuickInvoiceBottomButtons extends StatelessWidget {
  const QuickInvoiceBottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomTextButton(
            date: 'Add more details',
          ),
        ),
        Gap(24),
        Expanded(
          child: CustomTextButton(
            date: 'Send Money',
            isBlueButton: true,
          ),
        ),
      ],
    );
  }
}
