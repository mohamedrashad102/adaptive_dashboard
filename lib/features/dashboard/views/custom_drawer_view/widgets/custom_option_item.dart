import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../../../common/models/drawer_option_model.dart';
import '../../../../../../common/utils/app_styles.dart';

class CustomOptionItem extends StatelessWidget {
  const CustomOptionItem({
    super.key,
    required this.option,
  });

  final DrawerOptionsModel option;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        children: [
          SvgPicture.asset(option.iconSrc),
          const Gap(10),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                option.title,
                style: AppStyles.bold16(context),
              ),
            ),
          ),
          const Gap(10),
        ],
      ),
    );
  }
}
