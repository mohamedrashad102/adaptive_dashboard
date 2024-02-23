import 'package:adaptive_dashboard/features/dashboard/cubits/transaction_cubit/transaction_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../cubits/card_cubit/card_cubit.dart';
import 'card_page_view.dart';
import 'my_card_text.dart';
import 'transaction_date.dart';
import 'transaction_history.dart';
import 'transaction_history_data.dart';

class CardPart extends StatelessWidget {
  const CardPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyCardText(),
          const Gap(20),
          // card page view
          BlocProvider(
            create: (context) => CardCubit(),
            child: const CardPageView(),
          ),
          const Divider(
            color: Color(0xffF1F1F1),
            height: 40,
          ),
          const TransactionHistory(),
          const Gap(20),
          const TransactionDate(),
          const Gap(16),
          BlocProvider(
            create: (context) => TransactionCubit(),
            child: const TransactionHistoryData(),
          ),
        ],
      ),
    );
  }
}
