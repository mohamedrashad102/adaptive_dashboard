import 'package:adaptive_dashboard/common/utils/app_assets.dart';
import 'package:adaptive_dashboard/features/dashboard/cubits/card_cubit/card_cubit.dart';
import 'package:flutter/material.dart';

import 'custom_card_item_bottom_column.dart';
import 'custom_card_item_top_row.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({
    super.key,
    required this.pageIndex,
  });
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    final cardData = CardCubit.of(context).cardsData[pageIndex];
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(30, 20, 24, 27),
        decoration: BoxDecoration(
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage(AppAssets.cardBgPng),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomCardItemTopRow(name: cardData.name),
            const Spacer(),
            CustomCardItemBottomColumn(
              cardBin: cardData.cardBin,
              cardCode: cardData.cardCode,
            ),
          ],
        ),
      ),
    );
  }
}
