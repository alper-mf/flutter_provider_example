import 'dart:developer';

import 'package:dusyeri_app/common/constant/list_constant.dart';
import 'package:dusyeri_app/common/constant/text_constat.dart';
import 'package:dusyeri_app/data/models/item_model.dart';
import 'package:dusyeri_app/init/load_pref.dart';
import 'package:dusyeri_app/service/user_view_model.dart';
import 'package:flutter/material.dart';

class FacilitiesViewModel with ChangeNotifier {
  UserViewModel? userViewModel;

  FacilitiesViewModel(this.userViewModel) {
    //Init createList
    createList();
    //cleanList();
  }

  List<ItemModel> _tempList = [];
  List<ItemModel> get tempList => _tempList;

  List<ItemModel> _favoriteList = [];
  List<ItemModel> get favoriteList => _favoriteList;

  //If _initList not added the locale storage, create list method
  createList() async {
    fetchList().then((value) async {
      addToFavorite();
      if (value.isEmpty) {
        final String encodedData =
            ItemModel.encode(ListConstant.initFacilitiesList);
        await prefs.setString(TextConstant.facilitiesKey, encodedData);
        fetchList();
        notifyListeners();
      }
    });
  }

  addToFavorite() {
    var temp = _tempList.where((element) => element.favorite == true).toList();
    _favoriteList = temp;
    print(temp.length);
    notifyListeners();
  }

  addFavorite(int index, ItemModel item) async {
    _tempList[_tempList.indexWhere((element) => element.id == item.id)] =
        ItemModel(id: item.id, name: item.name, favorite: !item.favorite);
    updateList().then((value) {
      fetchList();
    });
  }

  //Fetch List From Locale Storage
  Future<List<ItemModel>> fetchList() async {
    var itemString = prefs.getString(TextConstant.facilitiesKey);
    if (itemString != null) {
      final List<ItemModel> items = ItemModel.decode(itemString.toString());
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
      final String encodedData = ItemModel.encode(_tempList);
      await prefs.setString(TextConstant.facilitiesKey, encodedData);
      var data = await prefs.setString(TextConstant.facilitiesKey, encodedData);
      log(data.toString());
    }).then((value) {
      fetchList();
      notifyListeners();
    });
  }

  //Clean Prefs
  Future cleanList() async {
    // await prefs.remove(TextConstant.attentionKey);

    await prefs.clear();
  }
}
