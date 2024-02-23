import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ExpenseBodyPrice extends StatelessWidget {
  const ExpenseBodyPrice({
    super.key,
    required this.price,
    required this.isSelected,
  });

  final double price;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(
        '\$$price',
        style: AppStyles.semiBold24(context).copyWith(
          color: isSelected ? Colors.white : AppStyles.semiBold24(context).color,
        ),
      ),
    );
  }
}
