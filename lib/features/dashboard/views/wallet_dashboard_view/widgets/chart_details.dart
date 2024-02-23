import 'package:adaptive_dashboard/features/dashboard/cubits/income_chart_cubit/income_chart_cubit.dart';
import 'package:adaptive_dashboard/features/dashboard/cubits/income_chart_cubit/income_chart_cubit_state.dart';
import 'package:adaptive_dashboard/features/dashboard/views/wallet_dashboard_view/widgets/income_details_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ChartDetails extends StatelessWidget {
  const ChartDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IncomeChartCubit, IncomeChartCubitState>(
      builder: (context, state) {
        final cubit = IncomeChartCubit.of(context);
        return Column(
          children: cubit.details
              .asMap()
              .entries
              .map(
                (entry) => Column(
                  children: [
                    IncomeDetailsItem(incomeDetail: entry.value),
                    Visibility(
                      visible: entry.key != cubit.details.length - 1,
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
