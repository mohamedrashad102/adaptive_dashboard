import 'package:adaptive_dashboard/common/models/income_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'income_chart_cubit_state.dart';

class IncomeChartCubit extends Cubit<IncomeChartCubitState> {
  IncomeChartCubit() : super(Initial());
  static IncomeChartCubit of(BuildContext context) =>
      BlocProvider.of<IncomeChartCubit>(context);

  int? touchedSectionIndex;
  final details = [
    const IncomeModel(
      type: 'Design service',
      color: Color(0xFF208CC8),
      present: 40,
    ),
    const IncomeModel(
      type: 'Design product',
      color: Color(0XFF4EB7F2),
      present: 25,
    ),
    const IncomeModel(
      type: 'Product royalti',
      color: Color(0XFF064061),
      present: 20,
    ),
    const IncomeModel(
      type: 'Other',
      color: Color(0XFFE2DECD),
      present: 15,
    ),
  ];

  touchSection({required int? touchedSectionIndex}) {
    this.touchedSectionIndex = touchedSectionIndex;
    emit(TouchSection());
  }
}
