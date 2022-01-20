import 'dart:convert';

class ItemModel {
  final int id;
  final String name;
  bool favorite;

  ItemModel({
    required this.id,
    required this.name,
    required this.favorite,
  });

  factory ItemModel.fromJson(Map<String, dynamic> jsonData) {
    return ItemModel(
      id: jsonData['id'],
      name: jsonData['name'],
      favorite: jsonData['favorite'],
    );
  }

  static Map<String, dynamic> toMap(ItemModel item) => {
        'id': item.id,
        'name': item.name,
        'favorite': item.favorite,
      };

  static String encode(List<ItemModel> musics) => json.encode(
        musics
            .map<Map<String, dynamic>>((item) => ItemModel.toMap(item))
            .toList(),
      );

  static List<ItemModel> decode(String items) =>
      (json.decode(items) as List<dynamic>)
          .map<ItemModel>((item) => ItemModel.fromJson(item))
          .toList();
}
