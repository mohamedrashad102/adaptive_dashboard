import 'package:adaptive_dashboard/common/models/latest_transaction_model.dart';
import 'package:adaptive_dashboard/common/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'latest_transaction_list_item.dart';

class LatestTransactionList extends StatelessWidget {
  const LatestTransactionList({super.key});

  static const List<LatestTransactionModel> latestTransactions = [
    LatestTransactionModel(
      image: AppAssets.imagesFrame,
      userName: 'Mohamed Rashad',
      email: 'mohamedrashadhyg@gmail.com',
    ),
    LatestTransactionModel(
      image: AppAssets.imagesFrame1,
      userName: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
    ),
    LatestTransactionModel(
      image: AppAssets.imagesFrame2,
      userName: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
    ),
    LatestTransactionModel(
      image: AppAssets.imagesFrame,
      userName: 'Mohamed Rashad',
      email: 'mohamedrashadhyg@gmail.com',
    ),
    LatestTransactionModel(
      image: AppAssets.imagesFrame1,
      userName: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
    ),
    LatestTransactionModel(
      image: AppAssets.imagesFrame2,
      userName: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => LatestTransactionListItem(
          latestTransaction: latestTransactions[index],
        ),
        separatorBuilder: (context, index) => const Gap(12),
        itemCount: latestTransactions.length,
      ),
    );
  }
}
