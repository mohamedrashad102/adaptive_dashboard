import 'package:adaptive_dashboard/common/models/drawer_option_model.dart';
import 'package:flutter/material.dart';

import 'custom_option_item.dart';

class ActiveOptionItem extends StatelessWidget {
  const ActiveOptionItem({
    super.key,
    required this.option,
  });

  final DrawerOptionsModel option;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Color(0XFF4EB7F2),
            width: 4,
          ),
        ),
      ),
      child: CustomOptionItem(option: option),
    );
  }
}
