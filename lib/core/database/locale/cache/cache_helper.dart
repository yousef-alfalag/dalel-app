import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;
  init() async{
    sharedPreferences=await SharedPreferences.getInstance();
  }
  String? getDataString({required String key}){
    return sharedPreferences.getString(key);
  }
  Future<bool> saveData({required String key,dynamic data })async{
    if(data is bool){
     return await sharedPreferences.setBool(key, data);
    }

    if(data is String){
     return await sharedPreferences.setString(key, data);
    }

    if(data is int){
     return await sharedPreferences.setInt(key, data);
    }

    else{
     return await sharedPreferences.setDouble(key, data);
    }
  }
  
  dynamic getData({required String key }){
    return sharedPreferences.get(key);
  }

  Future<bool> removeData({required String key})async{
    return await sharedPreferences.remove(key);
  }

  bool containsKey({required String key}){
    return sharedPreferences.containsKey(key);
  }
  Future<bool> cleanAllData()async{
   return await sharedPreferences.clear();
  }
}