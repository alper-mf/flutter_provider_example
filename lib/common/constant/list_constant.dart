import 'package:dusyeri_app/data/models/attention_model.dart';
import 'package:dusyeri_app/data/models/item_model.dart';

class ListConstant {
  static final List<AttentionModel> initAttentionList = [
    AttentionModel(
        id: 1,
        title: 'Duyuru-5',
        subTitle: "Duyuru Metni satır:1 \nSatır2 \nSatır3 \nSatır4 \nSatır5"),
    AttentionModel(
        id: 2,
        title: 'Duyuru-4',
        subTitle: "Duyuru Metni satır:1 \nSatır2 \nSatır3"),
    AttentionModel(
        id: 3, title: 'Duyuru-3', subTitle: "Duyuru Metni satır:1 \nSatır2 "),
    AttentionModel(
        id: 4,
        title: 'Duyuru-2',
        subTitle: "Duyuru Metni satır:1 \nSatır2 \nSatır3 \nSatır4"),
    AttentionModel(
        id: 5,
        title: 'Duyuru-1',
        subTitle:
            "Duyuru Metni satır:1 \nSatır2 \nSatır3 \nSatır4 \nSatır5 \nSatır6"),
  ];

  static List<ItemModel> initFacilitiesList = [
    ItemModel(id: 1, name: 'Mavi Tesis', favorite: false),
    ItemModel(id: 2, name: 'Turuncu Tesis', favorite: false),
    ItemModel(id: 3, name: 'Siyah Tesis', favorite: false),
    ItemModel(id: 4, name: 'Sarı Tesis', favorite: false),
    ItemModel(id: 5, name: 'Yeşil Tesis', favorite: false),
    ItemModel(id: 6, name: 'Beyaz Tesis', favorite: false),
    ItemModel(id: 7, name: 'Pembe Tesis', favorite: false),
    ItemModel(id: 8, name: 'Mor Tesis', favorite: false),
    ItemModel(id: 9, name: 'Gri Tesis', favorite: false),
    ItemModel(id: 10, name: 'Turkuaz Tesis', favorite: false),
  ];
}
