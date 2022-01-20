import 'package:dusyeri_app/common/constant/color_constant.dart';
import 'package:dusyeri_app/common/constant/sizes_constant.dart';
import 'package:dusyeri_app/common/constant/text_constat.dart';
import 'package:dusyeri_app/screens/login_screen/login_model/login_model.dart';
import 'package:dusyeri_app/screens/login_screen/login_widgets/text_form.dart';
import 'package:dusyeri_app/widgets/c_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.secondColor,
      appBar: AppBar(
          backgroundColor: ColorConstant.secondColor,
          elevation: 0,
          iconTheme: IconThemeData(
            color: ColorConstant.mainColor,
          )),
      body: SafeArea(
        child: Consumer<LoginViewModel>(builder: (context, state, widget) {
          return Padding(
            padding: EdgeInsets.all(Sizes.kPaddingH(context)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextForm(
                  userNameController: state.userName,
                  passwordController: state.password,
                ),
                SizedBox(height: Sizes.kPaddingH(context)),
                CustomElevatedButton(
                  text: TextConstant.memberLogin,
                  isColored: true,
                  onTap: () {
                    state.loginCheck(context);
                  },
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
