
import 'package:budg/repository/repositoryAbstract.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ProductRepository extends RepositoryAbstract{



  @override
  Object getData(String tableName,String productname) {
    var box = Hive.box(tableName);
    return box.get(productname);
  
  }

  @override
  List getDataAll(String tableName) {
     var box =  Hive.box(tableName).values.cast().toList();
     return box ;
    

  }

  @override
  void saveData(String tableName,String productname, var product ){
    var box =  Hive.box(tableName);
     box.put(productname, product);
    
  }




  @override
  Future<String> deleteData (String tableName,String productname) async {
  
    var box = Hive.box(tableName);
    box.delete(productname);
    return "Process is okay";

}

  @override
  void updateData(String tableName,String productname, var product){
     var box = Hive.box(tableName);
     box.put(productname, product);

}}