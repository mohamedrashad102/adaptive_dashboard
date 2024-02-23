import 'package:adaptive_dashboard/features/dashboard/layers/mobile_layout.dart';
import 'package:adaptive_dashboard/features/dashboard/views/custom_drawer_view/custom_drawer_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawerView(),
        ),
        Gap(20),
        Expanded(
          flex: 2,
          child: MobileLayout(),
        ),
        Gap(20),
      ],
    );
  }
}
