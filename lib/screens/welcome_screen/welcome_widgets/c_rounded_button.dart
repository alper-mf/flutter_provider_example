import 'package:dusyeri_app/common/constant/color_constant.dart';
import 'package:dusyeri_app/common/constant/sizes_constant.dart';
import 'package:dusyeri_app/common/constant/text_style.dart';
import 'package:flutter/material.dart';

class CRoundedButton extends StatelessWidget {
  final String text;

  final GestureTapCallback? onTap;
  const CRoundedButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: Sizes.kHeight(context) * .12,
          width: Sizes.kHeight(context) * .12,
          child: ElevatedButton(
              onPressed: onTap,
              child: Text(
                text[0],
                style: ITextStyle.h1(ColorConstant.mainColor, true),
              ),
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.grey.shade100,
                  onPrimary: ColorConstant.mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(Sizes.detailedCardRadius))))),
        ),
        SizedBox(
          height: Sizes.kPaddingH(context) / 2,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: ITextStyle.subHead(ColorConstant.textColor, true),
        )
      ],
    );
  }
}
