
// POST
// UPDATE
// DELETE

// GET

// base url : https://newsapi.org/
// method (url) : v2/top-headlines?
// queries : country=eg&category=business&apiKey=ab4e4f99877b4e0ca619cd0d795c8b5e

//https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=ab4e4f99877b4e0ca619cd0d795c8b5e


import 'package:adaptive_theme/adaptive_theme.dart';

Future<void> changeMode(context) async
{
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  savedThemeMode == AdaptiveThemeMode.light ? AdaptiveTheme.of(context).setDark(): AdaptiveTheme.of(context).setLight();

}