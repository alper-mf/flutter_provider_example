import 'package:dusyeri_app/common/constant/route_constant.dart';
import 'package:flutter/material.dart';

class WelcomeModel with ChangeNotifier {
  void facilitiesOnTapButton(BuildContext context) {
    Navigator.pushNamed(context, RouteConstant.facilitiesScreen);
  }

  void attentionOnTapButton(BuildContext context) {
    Navigator.pushNamed(context, RouteConstant.attentionScren);
  }

  void logout(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        RouteConstant.starterScreen, (Route<dynamic> route) => false);
  }
}
