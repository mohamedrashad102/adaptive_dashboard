import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionDate extends StatelessWidget {
  const TransactionDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '13 April 2022',
      style: AppStyles.medium16(context).copyWith(
        color: const Color(0XFFAAAAAA),
      ),
    );
  }
}
