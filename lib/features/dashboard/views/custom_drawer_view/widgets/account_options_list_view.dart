import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/drawer_cubit/drawer_cubit.dart';
import '../../../cubits/drawer_cubit/drawer_state.dart';
import 'active_option_item.dart';
import 'in_active_option_item.dart';

class AccountOptionsListView extends StatelessWidget {
  const AccountOptionsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerCubit, DrawerCubitState>(
      builder: (context, state) {
        final drawerCubit = DrawerCubit.of(context);
        return Column(
          children: drawerCubit.accountOptions.asMap().entries.map(
            (entry) {
              final optionIndex = entry.key;
              final option = entry.value;
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: drawerCubit.isSelectedAccountOption(optionIndex)
                    ? ActiveOptionItem(option: option)
                    : InActiveOptionItem(
                        option: option,
                        onTap: () => drawerCubit.selectAccountOption(
                          currentOptionIndex: optionIndex,
                        ),
                      ),
              );
            },
          ).toList(),
        );
      },
    );
  }
}
