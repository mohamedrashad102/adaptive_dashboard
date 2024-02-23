import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomCardItemBottomColumn extends StatelessWidget {
  const CustomCardItemBottomColumn({
    super.key,
    required this.cardBin,
    required this.cardCode,
  });
  final String cardBin;
  final String cardCode;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            cardCode,
            style: AppStyles.semiBold24(context).copyWith(
              color: Colors.white,
            ),
          ),
          const Gap(12),
          Text(
            cardBin,
            style: AppStyles.regular16(context).copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
