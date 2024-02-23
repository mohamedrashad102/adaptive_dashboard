import 'package:adaptive_dashboard/common/helpers/scale_factor.dart';
import 'package:flutter/material.dart';

double getFontSize(BuildContext context, double fontSize) {
  // return fontSize;
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}
