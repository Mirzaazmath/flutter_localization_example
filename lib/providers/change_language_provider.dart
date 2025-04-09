import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangeLanguageProvider with ChangeNotifier {
  Locale? _appLocale;
  Locale? get appLocale => _appLocale;

  void updateLanguage(Locale lang) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    _appLocale = lang;
    if (lang == Locale('en')) {
      await sp.setString('language_code', 'en');
    } else if(lang == Locale('hi')) {
      await sp.setString('language_code', 'hi');
    } else if(lang == Locale('ur')) {
      await sp.setString('language_code', 'ur');
    }else{
      await sp.setString('language_code', 'es');
    }
    notifyListeners();
  }
}
