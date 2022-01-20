import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:dusyeri_app/common/constant/text_constat.dart';
import 'package:dusyeri_app/screens/welcome_screen/welcome_view/welcome_view.dart';
import 'package:dusyeri_app/service/user_view_model.dart';
import 'package:flutter/material.dart';

class LoginViewModel with ChangeNotifier {
  UserViewModel? userViewModel;
  LoginViewModel(this.userViewModel);

  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  loginCheck(context) {
    if (userViewModel!.userName.toString().toLowerCase() !=
        userName.text.toLowerCase()) {
      showAdaptiveDialogs(context, TextConstant.wrongUserName);
    } else if (userViewModel!.password.toString().toLowerCase() !=
        password.text.toLowerCase()) {
      showAdaptiveDialogs(context, TextConstant.wrongPassword);
    } else {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const WelcomeView()));
    }
  }

  showAdaptiveDialogs(BuildContext context, String subTitle) {
    showOkAlertDialog(context: context, title: 'Hata', message: subTitle);
  }
}
