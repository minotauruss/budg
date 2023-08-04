import 'dart:ui';

import 'package:hive/hive.dart';
/* flutter pub run build_runner build --delete-conflicting-outputs */
part 'product.g.dart';


@HiveType(typeId: 0)
class Product extends HiveObject{
  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String price;

  @HiveField(3)
  String brand;

  @HiveField(4)
  String date;

  @HiveField(5)
  String category;

 @HiveField(6)
  String quantity;



  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.brand,
    required this.date,
    required this.category,
    required this.quantity,
  
  });
}