import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ExpenseBodyDate extends StatelessWidget {
  const ExpenseBodyDate({
    super.key,
    required this.date,
    required this.isSelected,
  });

  final String date;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Text(
      date,
      style: AppStyles.regular14(context).copyWith(
        color: isSelected ? Colors.white : AppStyles.regular14(context).color,
      ),
    );
  }
}
