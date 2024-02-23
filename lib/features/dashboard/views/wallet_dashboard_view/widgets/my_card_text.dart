import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class MyCardText extends StatelessWidget {
  const MyCardText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'My card',
      style: AppStyles.semiBold20(context),
    );
  }
}
