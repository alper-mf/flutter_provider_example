import 'package:dusyeri_app/common/constant/list_constant.dart';
import 'package:dusyeri_app/common/constant/text_constat.dart';
import 'package:dusyeri_app/data/models/attention_model.dart';
import 'package:dusyeri_app/init/load_pref.dart';
import 'package:dusyeri_app/service/user_view_model.dart';
import 'package:flutter/material.dart';

class AttentionViewModel with ChangeNotifier {
  UserViewModel? userViewModel;
  AttentionViewModel(this.userViewModel) {
    //Create list method for empty db list
    createList();
    //cleanList();
  }

  List<AttentionModel> _tempList = [];
  List<AttentionModel> get tempList => _tempList;

  //If _initList not added the locale storage, create list method
  createList() async {
    fetchList().then((value) async {
      if (value.isEmpty) {
        final String encodedData =
            AttentionModel.encode(ListConstant.initAttentionList);
        await prefs.setString(TextConstant.attentionKey, encodedData);
        fetchList();
        notifyListeners();
      }
    });
  }

  removeAttention(int index, AttentionModel item) async {
    _tempList.removeAt(index);
    updateList();
    notifyListeners();
  }

  //Fetch List From Locale Storage
  Future<List<AttentionModel>> fetchList() async {
    var itemString = prefs.getString(TextConstant.attentionKey);
    if (itemString != null) {
      final List<AttentionModel> items =
          AttentionModel.decode(itemString.toString());
      _tempList = items;
      notifyListeners();
      return items;
    } else {
      return [];
    }
  }

  //Update List on local storage
  updateList() async {
    cleanList();
    Future.delayed(const Duration(milliseconds: 100), () async {
      final String encodedData = AttentionModel.encode(_tempList);
      await prefs.setString(TextConstant.attentionKey, encodedData);
    }).then((value) {
      fetchList();
      notifyListeners();
    });
  }

  //Clean Prefs
  cleanList() async {
    await prefs.clear();
  }
}
