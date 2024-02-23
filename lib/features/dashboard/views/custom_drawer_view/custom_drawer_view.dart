import 'package:adaptive_dashboard/common/models/user_info_model.dart';
import 'package:adaptive_dashboard/features/dashboard/views/custom_drawer_view/widgets/user_info.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../common/utils/app_assets.dart';
import 'widgets/account_options_list_view.dart';
import 'widgets/gallery_image.dart';
import 'widgets/main_options_list_view.dart';

class CustomDrawerView extends StatelessWidget {
  const CustomDrawerView({super.key});

  static const user = UserInfoModel(
    photoSrc: AppAssets.imagesFrame,
    name: 'Lekan Okeowo',
    email: 'demo@gmail.com',
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Gap(50),
                GalleryImage(),
                Gap(10),
                UserInfo(user: user),
                Gap(25),
              ],
            ),
          ),
          MainOptionListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                Gap(20),
                AccountOptionsListView(),
                Gap(48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
