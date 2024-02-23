import 'package:adaptive_dashboard/features/dashboard/views/custom_drawer_view/custom_drawer_view.dart';
import 'package:adaptive_dashboard/features/dashboard/views/wallet_dashboard_view/wallet_dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../views/billing_dashboard_view/billing_dashboard_view.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawerView(),
        ),
        Gap(20),
        Expanded(
          flex: 6,
          child: BillingDashboardView(),
        ),
        Gap(20),
        Expanded(
          flex: 3,
          child: WalletDashboardView(),
        ),
        Gap(20)
      ],
    );
  }
}
