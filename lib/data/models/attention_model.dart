import 'dart:convert';

class AttentionModel {
  final int id;
  final String title;
  final String subTitle;

  AttentionModel({
    required this.id,
    required this.title,
    required this.subTitle,
  });

  factory AttentionModel.fromJson(Map<String, dynamic> jsonData) {
    return AttentionModel(
      id: jsonData['id'],
      title: jsonData['title'],
      subTitle: jsonData['subtitle'],
    );
  }

  static Map<String, dynamic> toMap(AttentionModel item) => {
        'id': item.id,
        'title': item.title,
        'subtitle': item.subTitle,
      };

  static String encode(List<AttentionModel> musics) => json.encode(
        musics
            .map<Map<String, dynamic>>((item) => AttentionModel.toMap(item))
            .toList(),
      );

  static List<AttentionModel> decode(String items) =>
      (json.decode(items) as List<dynamic>)
          .map<AttentionModel>((item) => AttentionModel.fromJson(item))
          .toList();
}
