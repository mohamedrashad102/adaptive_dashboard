import 'package:adaptive_dashboard/features/dashboard/cubits/card_cubit/card_cubit.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'custom_card_item.dart';
import 'custom_page_indicator.dart';

class CardPageView extends StatefulWidget {
  const CardPageView({
    super.key,
  });

  @override
  State<CardPageView> createState() => _CardPageViewState();
}

class _CardPageViewState extends State<CardPageView> {
  late final PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    _pageController.addListener(() {
      _scroll();
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _scroll() {
    int newPageIndex = _pageController.page!.round();
    CardCubit.of(context).scrollTo(newPageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: _pageController,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            CustomCardItem(pageIndex: index),
            const Gap(19),
            const CustomPageIndicator(),
          ],
        ),
      ),
      itemCount: CardCubit.of(context).cardsData.length,
    );
  }
}
