import 'package:adaptive_dashboard/features/dashboard/cubits/drawer_cubit/drawer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../cubits/drawer_cubit/drawer_state.dart';
import 'active_option_item.dart';
import 'in_active_option_item.dart';

class MainOptionListView extends StatelessWidget {
  const MainOptionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerCubit, DrawerCubitState>(
      builder: (context, state) {
        final drawerCubit = DrawerCubit.of(context);
        return SliverList.separated(
          itemBuilder: (context, index) => drawerCubit
                  .isSelectedMainOption(index)
              ? ActiveOptionItem(option: drawerCubit.mainOptions[index])
              : InActiveOptionItem(
                  option: drawerCubit.mainOptions[index],
                  onTap: () =>
                      drawerCubit.selectMainOption(currentOptionIndex: index),
                ),
          separatorBuilder: (context, index) => const Gap(20),
          itemCount: drawerCubit.mainOptions.length,
        );
      },
    );
  }
}
