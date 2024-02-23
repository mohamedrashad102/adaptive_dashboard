import 'package:adaptive_dashboard/features/dashboard/views/billing_dashboard_view/billing_dashboard_view.dart';
import 'package:adaptive_dashboard/features/dashboard/views/wallet_dashboard_view/wallet_dashboard_view.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: BillingDashboardView(),
        ),
        SliverToBoxAdapter(
          child: WalletDashboardView(),
        ),
      ],
    );
  }
}
