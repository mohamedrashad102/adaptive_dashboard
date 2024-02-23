import 'package:adaptive_dashboard/common/utils/app_assets.dart';
import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CustomCardItemTopRow extends StatelessWidget {
  const CustomCardItemTopRow({
    super.key,
    required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name card',
              style: AppStyles.regular16(context).copyWith(
                color: Colors.white,
              ),
            ),
            Text(
              name,
              style: AppStyles.medium20(context),
            ),
          ],
        ),
        const Spacer(),
        SvgPicture.asset(AppAssets.imagesGallery),
        const Gap(23),
      ],
    );
  }
}
