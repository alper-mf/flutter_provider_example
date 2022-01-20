import 'package:flutter/material.dart';

class Sizes {
  //Height And Sizes
  static double kHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double kWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  //Paddings
  static double kPaddingH(BuildContext context) {
    return kHeight(context) * .02;
  }

  static double kPaddingW(BuildContext context) {
    return kWidth(context) * .02;
  }

  static double allPadding = 12;

  //Radius
  static double circularRadius = 72;
  static double detailedCardRadius = 14;

  //Border Sizes
  static double buttonBorderSize = 2;
}
