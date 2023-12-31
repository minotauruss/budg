
abstract class RepositoryAbstract<T>{

  void saveData(String tableName ,String productname, var product);
  List<T> getDataAll(String tableName);
  Object getData(String tableName,String productname);
  Future<String>deleteData(String tableName,String productname);
  void updateData(String tableName,String productname, var product);
}