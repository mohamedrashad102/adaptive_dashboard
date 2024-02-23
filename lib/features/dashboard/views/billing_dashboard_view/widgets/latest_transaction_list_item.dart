import 'package:adaptive_dashboard/common/helpers/get_font_size.dart';
import 'package:adaptive_dashboard/common/models/latest_transaction_model.dart';
import 'package:adaptive_dashboard/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class LatestTransactionListItem extends StatelessWidget {
  const LatestTransactionListItem({
    super.key,
    required this.latestTransaction,
  });
  final LatestTransactionModel latestTransaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getFontSize(context, 250),
      height: 72,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0XFFFAFAFA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 48,
            width: 48,
            child: SvgPicture.asset(latestTransaction.image),
          ),
          const Gap(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  latestTransaction.userName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.semiBold16(context),
                ),
                const Spacer(),
                Text(
                  latestTransaction.email,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.regular12(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
