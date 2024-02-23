import 'package:adaptive_dashboard/common/models/expenses_model.dart';
import 'package:adaptive_dashboard/common/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'expenses_cubit_state.dart';

class ExpensesCubit extends Cubit<ExpensesCubitState> {
  ExpensesCubit() : super(AllExpensesInitial());
  static ExpensesCubit of(BuildContext context) =>
      BlocProvider.of<ExpensesCubit>(context);
  static const List<ExpensesModel> _expenses = [
    ExpensesModel(
      image: AppAssets.imagesMoneys,
      type: 'Balance',
      date: 'April 2022',
      price: 20.129,
    ),
    ExpensesModel(
      image: AppAssets.imagesCardReceive,
      type: 'Income',
      date: 'April 2022',
      price: 20.129,
    ),
    ExpensesModel(
      image: AppAssets.imagesCardSend,
      type: 'Expenses',
      date: 'April 2022',
      price: 20.129,
    ),
  ];

  List<ExpensesModel> get expenses => _expenses;

  int selectedExpenseIndex = 0;

  void selectExpense({required int expenseIndex}) {
    selectedExpenseIndex = expenseIndex;
    emit(AllExpensesSelectExpenseState());
  }

  bool isSelectedExpense(int expenseIndex) =>
      expenseIndex == selectedExpenseIndex;

  bool isLastExpense(int expenseIndex) => expenseIndex == _expenses.length - 1;
}
