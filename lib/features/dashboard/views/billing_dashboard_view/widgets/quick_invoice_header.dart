import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          'Quick Invoice',
          style: AppStyles.semiBold20(context),
        ),
        const Spacer(),
        Container(
          height: 48,
          width: 48,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0x0fffafaf),
          ),
          child: const Icon(
            Icons.add,
            size: 18,
            color: Color(0xFF4EB7F2),
          ),
        )
      ],
    );
  }
}
