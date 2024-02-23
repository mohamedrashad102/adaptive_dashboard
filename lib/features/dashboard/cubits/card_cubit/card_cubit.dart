import 'package:adaptive_dashboard/common/models/card_model.dart';
import 'package:adaptive_dashboard/features/dashboard/cubits/card_cubit/card_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardCubit extends Cubit<TransactionCubitState> {
  CardCubit() : super(CardInitial());

  static CardCubit of(BuildContext context) =>
      BlocProvider.of<CardCubit>(context);

  static const List<CardModel> _cardsData = [
    CardModel(
      name: 'Mohamed Rashad',
      cardCode: '0918 8124 0042 8129',
      cardBin: '12/20 - 124',
    ),
    CardModel(
      name: 'Ahmed Mohamed',
      cardCode: '0918 8124 0042 8129',
      cardBin: '12/20 - 124',
    ),
    CardModel(
      name: 'Mohamed Ahmed',
      cardCode: '0918 8124 0042 8129',
      cardBin: '12/20 - 124',
    ),
  ];

  List<CardModel> get cardsData => _cardsData;

  int currentPageIndex = 0;

  void scrollTo(int pageIndex) {
    currentPageIndex = pageIndex;
    emit(CardScrollState());
  }

  bool isCurrentPage(int pageIndex) => currentPageIndex == pageIndex;
}
