import 'package:adaptive_dashboard/common/helpers/get_font_size.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  // Regular
  static TextStyle _regular({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular12(BuildContext context) {
    return _regular(
      color: const Color(0xFFAAAAAA),
      fontSize: getFontSize(context, 12),
    );
  }

  static TextStyle regular14(BuildContext context) {
    return _regular(
      color: const Color(0xFFAAAAAA),
      fontSize: getFontSize(context, 14),
    );
  }

  static TextStyle regular16(BuildContext context) {
    return _regular(
      color: const Color(0xFF064061),
      fontSize: getFontSize(context, 16),
    );
  }

  // Medium
  static TextStyle _medium({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle medium16(BuildContext context) {
    return _medium(
      color: const Color(0xFF064061),
      fontSize: getFontSize(context, 16),
    );
  }

  static TextStyle medium20(BuildContext context) {
    return _medium(
      color: Colors.white,
      fontSize: getFontSize(context, 20),
    );
  }

  // Semi Bold
  static TextStyle _semiBold({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold16(BuildContext context) {
    return _semiBold(
      color: const Color(0xFF064061),
      fontSize: getFontSize(context, 16),
    );
  }

  static TextStyle semiBold18(BuildContext context) {
    return _semiBold(
      color: const Color(0xFF4EB7F2),
      fontSize: getFontSize(context, 18),
    );
  }

  static TextStyle semiBold20(BuildContext context) {
    return _semiBold(
      color: const Color(0xFF064061),
      fontSize: getFontSize(context, 20),
    );
  }

  static TextStyle semiBold24(BuildContext context) {
    return _semiBold(
      color: const Color(0xFF4EB7F2),
      fontSize: getFontSize(context, 24),
    );
  }

  // Bold
  static TextStyle _bold({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle bold16(BuildContext context) {
    return _bold(
      color: const Color(0xFF4EB7F2),
      fontSize: getFontSize(context, 16),
    );
  }
}
