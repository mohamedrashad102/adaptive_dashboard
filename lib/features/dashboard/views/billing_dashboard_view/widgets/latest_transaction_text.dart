import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class LatestTransactionText extends StatelessWidget {
  const LatestTransactionText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
      'Latest Transaction',
      style: AppStyles.medium16(context),
    );
  }
}
