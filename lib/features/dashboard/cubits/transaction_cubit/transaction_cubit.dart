import 'package:adaptive_dashboard/common/models/transaction_model.dart';
import 'package:adaptive_dashboard/features/dashboard/cubits/card_cubit/card_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionCubit extends Cubit<TransactionCubitState> {
  TransactionCubit() : super(CardInitial());

  static TransactionCubit of(BuildContext context) =>
      BlocProvider.of<TransactionCubit>(context);

  static const List<TransactionModel> _transactionsData = [
    TransactionModel(
      transaction: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      price: 20.129,
      isSpecial: true,
    ),
    TransactionModel(
      transaction: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      price: 2.000,
      isSpecial: false,
    ),
    TransactionModel(
      transaction: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      price: 20.129,
      isSpecial: false,
    ),
  ];

  List<TransactionModel> get transactionsData => _transactionsData;

  List<TransactionModel> lastTransactions(int range) =>
      _transactionsData.getRange(0, range).toList();
}
