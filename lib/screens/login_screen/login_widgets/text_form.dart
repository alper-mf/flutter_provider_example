import 'package:dusyeri_app/common/constant/color_constant.dart';
import 'package:dusyeri_app/common/constant/sizes_constant.dart';
import 'package:dusyeri_app/common/constant/text_constat.dart';
import 'package:dusyeri_app/common/constant/text_style.dart';
import 'package:dusyeri_app/screens/login_screen/login_widgets/text_field.dart';

import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final TextEditingController _userName;
  final TextEditingController _password;
  const TextForm({
    Key? key,
    required TextEditingController userNameController,
    required TextEditingController passwordController,
  })  : _userName = userNameController,
        _password = passwordController,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          TextConstant.loginTitle,
          style: ITextStyle.h2(ColorConstant.textColor, false),
        ),
        SizedBox(
          height: Sizes.kPaddingH(context),
        ),
        CustomTextField(
          textEditingController: _userName,
          title: TextConstant.userName,
        ),
        SizedBox(
          height: Sizes.kPaddingH(context),
        ),
        CustomTextField(
          textEditingController: _password,
          title: TextConstant.password,
        ),
      ],
    );
  }
}
