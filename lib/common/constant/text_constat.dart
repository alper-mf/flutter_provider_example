import 'package:flutter_dotenv/flutter_dotenv.dart';

class TextConstant {
  //Auth Info
  static String authUserName = '${dotenv.env['userName']}';
  static String authPassword = '${dotenv.env['password']}';

  //SharedPrefences Keys
  static String attentionKey = '${dotenv.env['attentionKey']}';
  static String facilitiesKey = '${dotenv.env['facilitiesKey']}';

  //Welcome Page
  static String title = 'Eflatun Belediyesi Mobil Uygulaması';
  static String memberLogin = 'Üye girişi';
  static String questLogin = 'Misafir olarak devam et';

  //Login Page
  static String userName = 'Kullanıcı Adı';
  static String password = 'Şifre';
  static String loginTitle = 'Üye Girişi';

  //Welcome Page
  static String welcome = 'Hoş Geldiniz';

  //Facilities Page
  static String myFavoriteFacilities = 'Favori Tesislerim';
  static String allFacilities = 'Tüm Tesisler';

  //Buttons Text
  static String facilities = 'Tesisler';
  static String attentions = 'Duyurular';
  static String delete = 'SİL';

  //AppBar
  static String quest = 'Misafir';

  //Dialog Text

  static String wrongUserName = 'Hatalı kullanıcı adı girdiniz.';
  static String wrongPassword = 'Parolanızı yanlış girdiniz.';
}
