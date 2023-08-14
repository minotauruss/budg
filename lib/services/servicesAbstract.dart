

abstract class ServiceAbstract{

  void saveData(String tableName ,String productname, var product);
  List getDataAll(String tableName);
  Object getData(String tableName,String productname);
  String deleteData(String tableName,String productname);
  void updateData(String tableName,String productname, var product);
}