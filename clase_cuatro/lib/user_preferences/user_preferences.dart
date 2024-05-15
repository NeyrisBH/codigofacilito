

import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static final UserPreferences _instance = UserPreferences._internal();

  factory UserPreferences(){
    return _instance;
  }

  UserPreferences._internal();

  SharedPreferences? _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String get defauldRoute {
    return _prefs?.getString('defauldRoute') ?? '';
  }

  set defauldRoute(String newValue){
    _prefs?.setString('defauldRoute', newValue);
  }
}