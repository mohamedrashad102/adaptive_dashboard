import 'package:adaptive_dashboard/features/dashboard/cubits/card_cubit/card_state.dart';
import 'package:adaptive_dashboard/features/dashboard/cubits/transaction_cubit/transaction_cubit.dart';
import 'package:adaptive_dashboard/features/dashboard/views/wallet_dashboard_view/widgets/transaction_history_data_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class TransactionHistoryData extends StatelessWidget {
  const TransactionHistoryData({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionCubitState>(
      builder: (context, state) {
        final lastTransaction =
            TransactionCubit.of(context).lastTransactions(3);
        return Column(
          children: lastTransaction
              .asMap()
              .entries
              .map(
                (entry) => Column(
                  children: [
                    TransactionHistoryDataItem(transactionModel: entry.value),
                    Visibility(
                      visible: entry.key < lastTransaction.length - 1,
                      child: const Gap(12),
                    ),
                  ],
                ),
              )
              .toList(),
        );
      },
    );
  }
}
