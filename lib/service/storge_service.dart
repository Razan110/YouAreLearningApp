//import 'dart:ffi';

import 'package:learnthings/constant/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  //store the signin info so the app will open to welcome page dirctly after the user sign in
  late final SharedPreferences _prefs;
  //working as single tone= a class that has just one Instance

  Future<StorageService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

//use this method to set the value of STORAGE_DEVICE_OPEN_FIRST_TIME in welcome page
  Future<bool> setBool(String key, bool value) async {
    return await _prefs.setBool(key, value);
  }

  //to rember the user
  Future<bool> setString(String key, String value) async {
    return await _prefs.setString(key, value);
  }
//if return null wish is mean false and its mean the user never logged in but if it true then the user logged in before

  bool getIsLoggedIn() {
    return _prefs.getString(AppConstants.STORAGE_USER_TOKEN_KEY) == null
        ? false
        : true;
  }

//method to know the value of STORAGE_DEVICE_OPEN_FIRST_TIME after i set it
  bool getDeviceFirstOpen() {
    return _prefs.getBool(AppConstants.STORAGE_DEVICE_OPEN_FIRST_TIME) ?? false;
  }
}
