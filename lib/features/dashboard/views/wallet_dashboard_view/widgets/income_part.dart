import 'package:adaptive_dashboard/features/dashboard/cubits/income_chart_cubit/income_chart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'income_chart.dart';
import 'income_header.dart';

class IncomePart extends StatelessWidget {
  const IncomePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const IncomeHeader(),
          const Gap(16),
          BlocProvider(
            create: (context) => IncomeChartCubit(),
            child: const IncomeChart(),
          )
        ],
      ),
    );
  }
}
