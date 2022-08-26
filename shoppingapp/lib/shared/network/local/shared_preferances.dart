// import 'package:flutter/cupertino.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class CacheHelper {
//   static SharedPreferences? shardedPreferences;
//   static inite() async {
//     shardedPreferences = await SharedPreferences.getInstance();
//   }

//  static Future<bool> putData({@required String? key, required bool value}) async {
//  return  await shardedPreferences!.setBool('$key', value);
//   }

//   static bool? getData({@required String? key,}){
//   return  shardedPreferences!.getBool('$key');
//   }
// }
