import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String local = "en";
  ThemeMode theme = ThemeMode.dark;

  changeTheme(ThemeMode mode) {
    theme = mode;
    notifyListeners();
  }

  changeLnaguage(String LangCode) {
    local = LangCode;
    notifyListeners();
  }
}
