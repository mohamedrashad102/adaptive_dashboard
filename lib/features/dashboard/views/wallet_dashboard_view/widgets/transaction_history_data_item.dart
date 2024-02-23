import 'package:adaptive_dashboard/common/models/transaction_model.dart';
import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TransactionHistoryDataItem extends StatelessWidget {
  const TransactionHistoryDataItem({
    super.key,
    required this.transactionModel,
  });
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0XFFFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transactionModel.transaction,
                style: AppStyles.semiBold16(context),
              ),
              const Gap(6),
              Text(
                transactionModel.date,
                style: AppStyles.regular16(context),
              ),
            ],
          ),
          const Spacer(),
          Text(
            '\$${transactionModel.price}',
            style: AppStyles.semiBold20(context).copyWith(
              color: transactionModel.isSpecial
                  ? const Color(0XFFF3735E)
                  : const Color(0XFF7DD97B),
            ),
          ),
        ],
      ),
    );
  }
}
