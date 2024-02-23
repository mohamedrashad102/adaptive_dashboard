import 'package:adaptive_dashboard/common/models/income_model.dart';
import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({
    super.key,
    required this.incomeDetail,
  });
  final IncomeModel incomeDetail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: incomeDetail.color,
            shape: BoxShape.circle,
          ),
        ),
        const Gap(12),
        Expanded(
          child: Text(
            incomeDetail.type,
            style: AppStyles.regular16(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Gap(2),
        Text(
          '${incomeDetail.present}%',
          style: AppStyles.medium16(context),
        ),
      ],
    );
  }
}
