import 'package:dusyeri_app/common/constant/color_constant.dart';
import 'package:dusyeri_app/common/constant/sizes_constant.dart';
import 'package:dusyeri_app/common/constant/text_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String title;

  CustomTextField(
      {Key? key, required this.textEditingController, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: Sizes.kWidth(context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: ITextStyle.subHead(ColorConstant.textColor, true),
          ),
          SizedBox(
            height: Sizes.kPaddingH(context) / 2,
          ),
          TextField(
            controller: textEditingController,
            autocorrect: false,
            decoration: InputDecoration(
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorConstant.mainColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
