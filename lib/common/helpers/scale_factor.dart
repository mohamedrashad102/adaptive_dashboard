import 'package:adaptive_dashboard/common/helpers/size_config.dart';
import 'package:flutter/material.dart';

double getScaleFactor(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.mobileBreakPoint) {
    return width / 480;
  } else if (width < SizeConfig.tabletBreakPoint) {
    return width / SizeConfig.mobileBreakPoint;
  } else {
    return width / SizeConfig.tabletBreakPoint;
  }
}
