import 'package:dusyeri_app/common/constant/assets_constant.dart';
import 'package:dusyeri_app/common/constant/color_constant.dart';
import 'package:dusyeri_app/common/constant/sizes_constant.dart';
import 'package:dusyeri_app/common/constant/text_constat.dart';
import 'package:dusyeri_app/common/constant/text_style.dart';
import 'package:dusyeri_app/screens/starter_screen/starter_model/starter_model.dart';
import 'package:dusyeri_app/widgets/c_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StarterView extends StatelessWidget {
  const StarterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<StarterViewModel>(builder: (context, state, widget) {
      return Scaffold(
        body: Container(
          height: Sizes.kHeight(context),
          width: Sizes.kWidth(context),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              //Image Opacity
              colorFilter: ColorConstant.bgColorFilter,
              image: AssetImage(
                AssetsConstant.loginBG,
              ),
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(Sizes.allPadding),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Text(
                      TextConstant.title,
                      textAlign: TextAlign.center,
                      style: ITextStyle.h2(Colors.black, true),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        CustomElevatedButton(
                          text: TextConstant.memberLogin,
                          isColored: true,
                          onTap: () {
                            state.memberLogin(context);
                          },
                        ),
                        CustomElevatedButton(
                          text: TextConstant.questLogin,
                          isColored: false,
                          onTap: () {
                            state.questLogin(context);
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
