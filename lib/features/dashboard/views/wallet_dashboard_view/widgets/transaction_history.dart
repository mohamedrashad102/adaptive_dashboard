import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          'Transaction History',
          style: AppStyles.semiBold20(context),
        ),
        const Spacer(),
        Text(
          'See all',
          style: AppStyles.medium16(context).copyWith(
            color: const Color(0xff4eb7f2),
          ),
        ),
      ],
    );
  }
}
