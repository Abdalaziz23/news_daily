import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier
{
  ThemeData? selectedTheme;

  ThemeData light = ThemeData.light().copyWith(
    primaryColor: Colors.green,
  );

  ThemeData dark = ThemeData.dark().copyWith(
    primaryColor: Colors.black,
  );

  ThemeProvider({bool? isDarkMode})
  {
    selectedTheme = isDarkMode! ? dark : light;
  }

  Future<void> swapTheme() async
  {
    final prefs = await SharedPreferences.getInstance();
    if(selectedTheme == dark )
      {
        selectedTheme = light;
        prefs.setBool("isDarkTheme", false);
      } else
      {
        selectedTheme = dark;
        prefs.setBool("isDarkTheme", true);
      }
    notifyListeners();
  }

  ThemeData? get getTheme => selectedTheme;

}