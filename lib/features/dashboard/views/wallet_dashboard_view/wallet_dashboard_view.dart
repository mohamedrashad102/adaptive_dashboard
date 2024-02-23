import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'widgets/card_part.dart';
import 'widgets/income_part.dart';

class WalletDashboardView extends StatelessWidget {
  const WalletDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CardPart(),
            Gap(20),
            IncomePart(),
            Gap(12),
          ],
        ),
      ),
    );
  }
}
