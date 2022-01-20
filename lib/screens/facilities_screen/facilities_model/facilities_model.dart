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

  //If _initList not added the locale storage, create list method
  createList() async {
    fetchList().then((value) async {
      if (value.isEmpty) {
        log('Liste Boş, Liste Initialize Ediliyor...');
        final String encodedData =
            ItemModel.encode(ListConstant.initFacilitiesList);
        await prefs.setString(TextConstant.facilitiesKey, encodedData);
        fetchList();
        notifyListeners();
      }
    });
  }

  addFavorite(int index, ItemModel item) async {
    _tempList[_tempList.indexWhere((element) => element.id == item.id)] =
        ItemModel(id: item.id, name: item.name, favorite: !item.favorite);
    updateSHPList(_tempList).then((value) {
      fetchList();
    });

    notifyListeners();
  }

  //Update SHP List
  Future updateSHPList(List<ItemModel> list) async {
    cleanList().then((value) async {
      log('List update edildi');
      final String encodedData = ItemModel.encode(list);
      await prefs.setString(TextConstant.facilitiesKey, encodedData);
      var data = prefs.getString(TextConstant.facilitiesKey);
      print("data" + data.toString());
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

  //Clean Prefs
  Future cleanList() async {
    await prefs.clear();
  }
}
