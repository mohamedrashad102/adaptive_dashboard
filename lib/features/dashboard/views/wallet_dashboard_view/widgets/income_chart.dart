import 'package:adaptive_dashboard/features/dashboard/cubits/income_chart_cubit/income_chart_cubit.dart';
import 'package:adaptive_dashboard/features/dashboard/cubits/income_chart_cubit/income_chart_cubit_state.dart';
import 'package:adaptive_dashboard/features/dashboard/views/wallet_dashboard_view/widgets/chart_circle.dart';
import 'package:adaptive_dashboard/features/dashboard/views/wallet_dashboard_view/widgets/chart_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IncomeChartCubit, IncomeChartCubitState>(
      builder: (context, state) {
        return const Row(
          children: [
            ChartCircle(),
            Gap(40),
            Expanded(
              child: ChartDetails(),
            ),
          ],
        );
      },
    );
  }
}
