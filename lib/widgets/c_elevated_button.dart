import 'package:dusyeri_app/common/constant/color_constant.dart';
import 'package:dusyeri_app/common/constant/sizes_constant.dart';
import 'package:dusyeri_app/common/constant/text_style.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final bool isColored;
  final GestureTapCallback? onTap;
  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.isColored,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.kWidth(context),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: ITextStyle.buttonTextStyle(
              isColoredButton: isColored,
              buttonTextColor: ColorConstant.mainColor),
        ),
        style: ElevatedButton.styleFrom(
            primary: isColored ? ColorConstant.mainColor : Colors.white,
            side: BorderSide(
                width: Sizes.buttonBorderSize, color: ColorConstant.mainColor)),
      ),
    );
  }
}
