import 'dart:developer';

import 'package:flutter/material.dart';

class UserViewModel with ChangeNotifier {
  UserViewModel({this.userName, this.password});

  final String? userName;
  final String? password;

  bool isQuest = false;

  setIsQuest(bool a) {
    isQuest = a;
    log('isQuest Statues ' + isQuest.toString());
    notifyListeners();
  }
}
