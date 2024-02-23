import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'expenses_body.dart';
import 'expenses_header.dart';

class ExpensesPart extends StatelessWidget {
  const ExpensesPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          ExpensesHeader(),
          Gap(16),
          ExpensesBody(),
          // AllExpensesBody(),
        ],
      ),
    );
  }
}
