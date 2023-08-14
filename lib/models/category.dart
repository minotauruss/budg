import 'package:hive/hive.dart';
/* flutter pub run build_runner build --delete-conflicting-outputs */
part 'category.g.dart';


@HiveType(typeId: 1)
class CategoryList extends HiveObject{


  @HiveField(1)
  List<String> shoping;

  @HiveField(2)
  List<String>  fueloil;

  @HiveField(3)
  List<String>  electronics;

  @HiveField(4)
  List<String>  bill;

  @HiveField(5)
  List<String>  other;





  CategoryList({
  
    required this.shoping,
    required this.fueloil,
    required this.electronics,
    required this.bill,
    required this.other,
    
  });
}