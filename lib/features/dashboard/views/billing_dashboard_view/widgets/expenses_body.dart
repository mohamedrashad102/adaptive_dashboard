import 'package:adaptive_dashboard/features/dashboard/cubits/all_expenses_cubit/expenses_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/all_expenses_cubit/expenses_cubit_state.dart';
import 'expenses_body_item.dart';

class ExpensesBody extends StatelessWidget {
  const ExpensesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpensesCubit, ExpensesCubitState>(
      builder: (context, state) {
        final expensesCubit = ExpensesCubit.of(context);
        return Row(
          children: expensesCubit.expenses.asMap().entries.map((entry) {
            final expense = entry.value;
            final expenseIndex = entry.key;
            return Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: expensesCubit.isLastExpense(expenseIndex) ? 0 : 12,
                ),
                child: ExpensesBodyItem(
                  expenseIndex: expenseIndex,
                  expensesModel: expense,
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
