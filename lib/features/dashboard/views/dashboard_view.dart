import 'package:adaptive_dashboard/common/utils/my_colors.dart';
import 'package:adaptive_dashboard/common/widgets/adaptive_layout.dart';
import 'package:adaptive_dashboard/features/dashboard/layers/desktop_layout.dart';
import 'package:adaptive_dashboard/features/dashboard/layers/mobile_layout.dart';
import 'package:adaptive_dashboard/features/dashboard/layers/tablet_layout.dart';
import 'package:adaptive_dashboard/features/dashboard/views/custom_drawer_view/custom_drawer_view.dart';
import 'package:flutter/material.dart';

import 'widgets/dashboard_app_bar.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.scaffoldColor,
      appBar: const DashboardAppBar(),
      drawer: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.7,
        child: const CustomDrawerView(),
      ),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
