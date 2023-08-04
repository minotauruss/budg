import 'package:hive_flutter/hive_flutter.dart';

class OpenHiveTable{
  static getOpenTable(String tableName) async{
    var box = await Hive.box(tableName);
    return box;
  }
}