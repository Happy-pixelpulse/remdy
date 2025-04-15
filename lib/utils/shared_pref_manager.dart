//
// import 'package:shared_preferences/shared_preferences.dart';
//
//
// class SharedPrefManager {
//   static SharedPreferences sharedPreferences;
//
//   static savePrefString(String key, String value) async {
//     sharedPreferences = await SharedPreferences.getInstance();
//     sharedPreferences.setString(key, value);
//   }
//
//   static Future<dynamic> getPrefrenceString(String key) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String val = prefs.getString(key);
//     return val;
//   }
//
//   static savePreferenceBoolean(bool b) async {
//     sharedPreferences = await SharedPreferences.getInstance();
//     sharedPreferences.setBool("isLoggedIn", b);
//   }
//
//   static getBooleanPreferences() async {
//     sharedPreferences = await SharedPreferences.getInstance();
//     return sharedPreferences.getBool("isLoggedIn");
//   }
//
//   static saveHideAppMethod(int value) async {
//     sharedPreferences = await SharedPreferences.getInstance();
//     sharedPreferences.setInt("HideAppMethod", value);
//   }
//
//   static getHideAppMethod() async {
//     sharedPreferences = await SharedPreferences.getInstance();
//     return sharedPreferences.getInt("HideAppMethod");
//   }
//
//   static saveCustomerId(String value) async {
//     sharedPreferences = await SharedPreferences.getInstance();
//     sharedPreferences.setString("customerId", value);
//   }
//
//   static getCustomerId() async {
//     sharedPreferences = await SharedPreferences.getInstance();
//     return sharedPreferences.getString("customerId");
//   }
//
//   static clearPrefs() async {
//     sharedPreferences = await SharedPreferences.getInstance();
//     Get.offAll(LoginPage(),
//         transition: Transition.rightToLeftWithFade,
//         duration: const Duration(milliseconds: 600));
//     return sharedPreferences.clear();
//   }
// }
