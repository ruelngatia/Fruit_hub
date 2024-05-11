import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage{

  
  Future<String?> read(String key) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  Future<void> write(String key,value) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key,value);
  }
  
}