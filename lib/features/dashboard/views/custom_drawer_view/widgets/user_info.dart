import 'package:adaptive_dashboard/common/models/user_info_model.dart';
import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:adaptive_dashboard/common/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.user,
  });

  final UserInfoModel user;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyColors.containerBgColor,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(user.photoSrc),
            const Gap(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Text(
                      user.name,
                      style: AppStyles.semiBold16(context),
                    ),
                  ),
                  const Gap(4),
                  FittedBox(
                    child: Text(
                      user.email,
                      style: AppStyles.regular12(context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
