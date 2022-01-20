import 'package:dusyeri_app/common/constant/color_constant.dart';
import 'package:dusyeri_app/common/constant/sizes_constant.dart';
import 'package:dusyeri_app/common/constant/text_constat.dart';
import 'package:dusyeri_app/common/constant/text_style.dart';
import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {
  String? title;
  ListTitle({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Sizes.kPaddingH(context),
        bottom: Sizes.kPaddingH(context) / 2,
      ),
      child: Text(
        title!,
        style: ITextStyle.subHead(ColorConstant.mainColor, false),
      ),
    );
  }
}
