import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper
{
  static SharedPreferences? sharedPreferences;
  static init() async
  {
    sharedPreferences =await SharedPreferences.getInstance();
  }

  static Future<bool> putData({
  required String key,
  required bool value,
}) async
  {
    return await sharedPreferences!.setBool(key, value);
  }

  // static dynamic getBoolean({
  //   required String key,
  // })
  // {
  //     return sharedPreferences!.getString(key);
  // }

//   static bool? getBoolean({
//     required String? key,
//   })
// {
//    return SharedPreferences.getBool(key);
// }
}