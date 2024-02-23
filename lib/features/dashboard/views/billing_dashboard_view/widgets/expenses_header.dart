import 'dart:math' as math;

import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ExpensesHeader extends StatelessWidget {
  const ExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.semiBold20(context),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: Color(0xFFF1F1F1),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Monthly',
                style: AppStyles.medium16(context),
              ),
              const SizedBox(width: 18),
              Transform.rotate(
                angle: -math.pi / 2,
                child: const Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 24,
                  color: Color(0xFF064061),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
