import 'package:dusyeri_app/common/constant/route_constant.dart';
import 'package:dusyeri_app/service/user_view_model.dart';
import 'package:flutter/material.dart';

class StarterViewModel with ChangeNotifier {
  UserViewModel? userViewModel;

  StarterViewModel(this.userViewModel);
  void memberLogin(BuildContext context) {
    Future.microtask(() => userViewModel!.setIsQuest(false)).then(
        (value) => Navigator.pushNamed(context, RouteConstant.authScreen));
  }

  void questLogin(BuildContext context) {
    Future.microtask(() => userViewModel!.setIsQuest(true)).then(
        (value) => Navigator.pushNamed(context, RouteConstant.welcomeScreen));
  }
}
