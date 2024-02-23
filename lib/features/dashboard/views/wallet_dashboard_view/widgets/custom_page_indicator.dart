import 'package:adaptive_dashboard/features/dashboard/cubits/card_cubit/card_cubit.dart';
import 'package:adaptive_dashboard/features/dashboard/views/wallet_dashboard_view/widgets/active_page_indicator.dart';
import 'package:adaptive_dashboard/features/dashboard/views/wallet_dashboard_view/widgets/in_active_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../cubits/card_cubit/card_state.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardCubit, TransactionCubitState>(
      builder: (context, state) {
        return Row(
          children:
              CardCubit.of(context).cardsData.asMap().entries.map((entry) {
            int pageIndex = entry.key;
            return Row(
              children: [
                CardCubit.of(context).currentPageIndex == pageIndex
                    ? const ActivePageIndicator()
                    : const InActivePageIndicator(),
                Visibility(
                  visible:
                      pageIndex < CardCubit.of(context).cardsData.length - 1,
                  child: const Gap(8),
                ),
              ],
            );
          }).toList(),
        );
      },
    );
  }
}
