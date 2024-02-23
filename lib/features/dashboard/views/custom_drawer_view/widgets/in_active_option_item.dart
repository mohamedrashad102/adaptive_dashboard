import 'package:adaptive_dashboard/common/models/drawer_option_model.dart';
import 'package:flutter/material.dart';

import 'custom_option_item.dart';

class InActiveOptionItem extends StatelessWidget {
  const InActiveOptionItem({
    super.key,
    required this.onTap,
    required this.option,
  });

  final VoidCallback onTap;
  final DrawerOptionsModel option;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CustomOptionItem(option: option),
    );
  }
}
