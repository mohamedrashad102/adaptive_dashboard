import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.isBlueButton = false,
    required this.date,
  });
  final bool isBlueButton;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isBlueButton ? const Color(0xFF4EB7F2) : Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        date,
        style: AppStyles.semiBold18(context).copyWith(
          color: isBlueButton ? Colors.white : AppStyles.semiBold18(context).color,
        ),
      ),
    );
  }
}
