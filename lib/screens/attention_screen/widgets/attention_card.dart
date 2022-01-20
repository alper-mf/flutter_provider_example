import 'package:dusyeri_app/common/constant/color_constant.dart';
import 'package:dusyeri_app/common/constant/sizes_constant.dart';
import 'package:dusyeri_app/common/constant/text_constat.dart';
import 'package:dusyeri_app/common/constant/text_style.dart';
import 'package:flutter/material.dart';

class AttentionCard extends StatelessWidget {
  String? title;
  final String subTitle;
  final bool isQuest;
  final GestureTapCallback? onTap;
  AttentionCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.isQuest,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Sizes.allPadding),
      width: Sizes.kHeight(context),
      decoration: BoxDecoration(
          border: Border.all(
        width: 1,
        color: Colors.black,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title.toString(),
                style: ITextStyle.h2(ColorConstant.mainColor, true),
              ),
              Visibility(
                visible: isQuest ? false : true,
                child: ElevatedButton(
                  onPressed: onTap,
                  child: Text(
                    TextConstant.delete,
                    style: ITextStyle.buttonTextStyle(
                        isColoredButton: false,
                        buttonTextColor: ColorConstant.textColor),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: const BorderSide(width: 1, color: Colors.black)),
                ),
              ),
            ],
          ),
          Text(
            isQuest ? 'Misafir Kullanıcı' : subTitle,
            textAlign: TextAlign.start,
            style: ITextStyle.subHead(ColorConstant.textColor, false),
          )
        ],
      ),
    );
  }
}
