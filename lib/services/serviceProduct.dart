import 'package:budg/repository/productRepository.dart';
import 'package:budg/services/servicesAbstract.dart';

class ServiceProduct extends ServiceAbstract{
  ProductRepository productRepository = ProductRepository();
  @override
  String deleteData(String tableName, String productname) {
   productRepository.deleteData(tableName, productname);
   return "process is okay";

  
  }

  @override
  Object getData(String tableName, String productname) {
    var data = productRepository.getData(tableName, productname);
    return data ;
  }


  @override
  List getDataAll(String tableName) {
    List data = productRepository.getDataAll(tableName); 
    return data;

  }

  @override
  void saveData(String tableName, String productname, product) {
    productRepository.saveData(tableName, productname, product);

  }

  @override
  void updateData(String tableName, String productname, product) {
    productRepository.updateData(tableName, productname, product);

  }

}