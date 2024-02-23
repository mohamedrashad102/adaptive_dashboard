import 'package:adaptive_dashboard/common/utils/app_assets.dart';
import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Income',
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
              SvgPicture.asset(AppAssets.imagesArrowDown)
            ],
          ),
        ),
      ],
    );
  }
}
