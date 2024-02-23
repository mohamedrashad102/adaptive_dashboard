import 'package:adaptive_dashboard/features/dashboard/cubits/income_chart_cubit/income_chart_cubit.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/income_chart_cubit/income_chart_cubit_state.dart';

class ChartCircle extends StatelessWidget {
  const ChartCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IncomeChartCubit, IncomeChartCubitState>(
      builder: (context, state) {
        final cubit = IncomeChartCubit.of(context);
        return SizedBox(
          width: 150,
          height: 150,
          child: PieChart(
            PieChartData(
              pieTouchData: PieTouchData(
                enabled: true,
                touchCallback: (event, response) {
                  int? touchedSectionIndex =
                      response?.touchedSection?.touchedSectionIndex;
                  cubit.touchSection(touchedSectionIndex: touchedSectionIndex);
                },
              ),
              sections: cubit.details
                  .asMap()
                  .entries
                  .map(
                    (entry) => PieChartSectionData(
                      value: entry.value.present,
                      color: entry.value.color,
                      title: '${entry.value.present}%',
                      radius: cubit.touchedSectionIndex == entry.key ? 30 : 25,
                      titleStyle: const TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                      showTitle:
                          cubit.touchedSectionIndex == entry.key ? true : false,
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}
