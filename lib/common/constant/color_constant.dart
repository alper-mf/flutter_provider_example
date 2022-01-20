import 'package:flutter/material.dart';

class ColorConstant {
  static Color mainColor = Colors.purple;
  static Color secondColor = Colors.white;

  //Background Image Opacity
  static ColorFilter bgColorFilter =
      ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop);

  //Text Colors

  static Color textColor = Colors.black;
}
