import 'package:shared_preferences/shared_preferences.dart';

class SharedpreferenceHelper {
  static String userIdKey = "USERKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";
  static String userImageKey = "USERIMAGEKEY"; 
}

Future<bool> saveUserId(String getUserId) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString(SharedpreferenceHelper.userIdKey, getUserId);
}



Future<bool> saveUserName(String getUserName) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString(SharedpreferenceHelper.userNameKey, getUserName);
}

Future<bool> saveUserEmail(String getUserEmail) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString(SharedpreferenceHelper.userEmailKey, getUserEmail);
}

Future<bool> saveUserImage(String getUserImage) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString(SharedpreferenceHelper.userImageKey, getUserImage);
}

Future<String?> getUserId() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(SharedpreferenceHelper.userIdKey);
}

Future<String?> getUserName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(SharedpreferenceHelper.userNameKey);
}

Future<String?> getUserImage() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(SharedpreferenceHelper.userImageKey);
}

Future<String?> getUserEmail() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(SharedpreferenceHelper.userEmailKey);
}