// ignore: file_names
import 'package:budg/models/product.dart';

abstract class RepositoryAbstract<T>{

  void saveData(String tableName ,String productname, Product product);
  List<T> getDataAll(String tableName);
  Object getData(String tableName,String productname);
  Future<String>deleteData(String tableName,String productname);
  void updateData(String tableName,String productname, Product product);
}