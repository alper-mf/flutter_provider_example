import 'package:flutter/material.dart';

class ITextStyle {
  static TextStyle h1(Color textColor, bool isBold) {
    return TextStyle(
      color: textColor,
      fontSize: 36,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
    );
  }

  static TextStyle h2(Color textColor, bool isBold) {
    return TextStyle(
      color: textColor,
      fontSize: 24,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
    );
  }

  static TextStyle subHead(Color textColor, bool isBold) {
    return TextStyle(
      color: textColor,
      fontSize: 14,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
    );
  }

  static TextStyle subTitle(Color textColor, bool isBold) {
    return TextStyle(
        color: textColor,
        fontSize: 14,
        fontFamily: isBold ? 'QuickSand-Bold' : 'QuickSand-Regular');
  }

  static TextStyle caption(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 14,
    );
  }

  static TextStyle searchTextStyle(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 14,
    );
  }

  static TextStyle buttonTextStyle(
      {required bool isColoredButton, required Color buttonTextColor}) {
    if (isColoredButton) {
      return const TextStyle(
        color: Colors.white,
        fontSize: 18,
      );
    } else {
      return TextStyle(
        color: buttonTextColor,
        fontSize: 18,
      );
    }
  }
}
