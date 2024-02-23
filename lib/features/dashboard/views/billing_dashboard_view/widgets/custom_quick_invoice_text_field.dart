import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomQuickInvoiceTextField extends StatelessWidget {
  const CustomQuickInvoiceTextField({
    super.key,
    required this.title,
    required this.hintText,
  });
  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: AppStyles.medium16(context),
        ),
        const Gap(12),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: const Color(0XFFFAFAFA),
            border: _border(),
            enabledBorder: _border(),
            focusedBorder: _border(),
            contentPadding: const EdgeInsets.all(20),
          ),
        ),
      ],
    );
  }

  _border() => OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0XFFFAFAFA),
        ),
        borderRadius: BorderRadius.circular(12),
      );
}
