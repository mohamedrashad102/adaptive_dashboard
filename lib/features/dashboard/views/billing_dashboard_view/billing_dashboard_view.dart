import 'package:adaptive_dashboard/common/helpers/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'widgets/expenses_part.dart';
import 'widgets/quick_invoice_part.dart';

class BillingDashboardView extends StatelessWidget {
  const BillingDashboardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Visibility(
            visible: width > SizeConfig.mobileBreakPoint,
            child: const Gap(40),
          ),
          const ExpensesPart(),
          const Gap(24),
          const QuickInvoicePart(),
        ],
      ),
    );
  }
}
