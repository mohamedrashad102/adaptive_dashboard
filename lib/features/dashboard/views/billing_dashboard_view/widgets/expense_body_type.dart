import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ExpenseBodyType extends StatelessWidget {
  const ExpenseBodyType({
    super.key,
    required this.type,
    required this.isSelected,
  });

  final String type;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Text(
      type,
      style: AppStyles.semiBold16(context).copyWith(
        color: isSelected ? Colors.white : AppStyles.semiBold16(context).color,
      ),
    );
  }
}
