import 'package:dusyeri_app/common/constant/assets_constant.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsConstant.loginBG,
    );
  }
}
