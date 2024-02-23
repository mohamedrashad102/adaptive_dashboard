import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/models/drawer_option_model.dart';
import '../../../../common/utils/app_assets.dart';
import 'drawer_state.dart';

class DrawerCubit extends Cubit<DrawerCubitState> {
  DrawerCubit() : super(DrawerInitial());

  static DrawerCubit of(BuildContext context) =>
      BlocProvider.of<DrawerCubit>(context);
  static const List<DrawerOptionsModel> _mainOptions = [
    DrawerOptionsModel(
      iconSrc: AppAssets.category2Image,
      title: 'Dashboard',
    ),
    DrawerOptionsModel(
      iconSrc: AppAssets.convertCardImage,
      title: 'My Transaction',
    ),
    DrawerOptionsModel(
      iconSrc: AppAssets.graphImage,
      title: 'Statistics',
    ),
    DrawerOptionsModel(
      iconSrc: AppAssets.wallet2Image,
      title: 'Wallet Account',
    ),
    DrawerOptionsModel(
      iconSrc: AppAssets.chart2Image,
      title: 'My Investments',
    ),
  ];
  static const List<DrawerOptionsModel> _accountOptions = [
    DrawerOptionsModel(
      iconSrc: AppAssets.settingImage,
      title: 'Setting system',
    ),
    DrawerOptionsModel(
      iconSrc: AppAssets.logoutImage,
      title: 'Logout account',
    ),
  ];

  List<DrawerOptionsModel> get mainOptions => _mainOptions;
  List<DrawerOptionsModel> get accountOptions => _accountOptions;

  int? _selectedMainOptionIndex = 0;
  int? _selectedAccountOptionIndex;

  void selectMainOption({required int currentOptionIndex}) {
    _selectedMainOptionIndex = currentOptionIndex;
    _selectedAccountOptionIndex = null;
    emit(DrawerSelectOptionState());
  }

  void selectAccountOption({required int currentOptionIndex}) {
    _selectedAccountOptionIndex = currentOptionIndex;
    _selectedMainOptionIndex = null;
    emit(DrawerSelectOptionState());
  }

  bool isSelectedMainOption(int currentOptionIndex) =>
      _selectedMainOptionIndex == currentOptionIndex;
  bool isSelectedAccountOption(int currentOptionIndex) =>
      _selectedAccountOptionIndex == currentOptionIndex;
}
