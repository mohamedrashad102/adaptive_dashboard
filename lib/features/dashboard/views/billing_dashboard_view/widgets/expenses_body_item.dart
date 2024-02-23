import 'package:adaptive_dashboard/common/models/expenses_model.dart';
import 'package:adaptive_dashboard/features/dashboard/cubits/all_expenses_cubit/expenses_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';


import '../../../cubits/all_expenses_cubit/expenses_cubit_state.dart';
import 'expense_body_date.dart';
import 'expense_body_icons_row.dart';
import 'expense_body_price.dart';
import 'expense_body_type.dart';

class ExpensesBodyItem extends StatelessWidget {
  const ExpensesBodyItem({
    super.key,
    required this.expenseIndex,
    required this.expensesModel,
  });

  final int expenseIndex;
  final ExpensesModel expensesModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpensesCubit, ExpensesCubitState>(
      builder: (context, state) {
        final expensesCubit = ExpensesCubit.of(context);
        bool isSelected = expensesCubit.isSelectedExpense(expenseIndex);
        return GestureDetector(
          onTap: () => ExpensesCubit.of(context)
              .selectExpense(expenseIndex: expenseIndex),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: ShapeDecoration(
              color: isSelected
                  ? const Color(0xFF4DB7F2)
                  : const Color(0xFFF1F1F1),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 1,
                  color: Color(0xFFF1F1F1),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ExpenseBodyIconsRow(
                  isSelected: isSelected,
                  image: expensesModel.image,
                ),
                const Gap(34),
                ExpenseBodyType(
                  isSelected: isSelected,
                  type: expensesModel.type,
                ),
                const Gap(8),
                ExpenseBodyDate(
                  isSelected: isSelected,
                  date: expensesModel.date,
                ),
                const Gap(16),
                ExpenseBodyPrice(
                  isSelected: isSelected,
                  price: expensesModel.price,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
