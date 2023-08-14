import 'package:hive/hive.dart';
/* flutter pub run build_runner build --delete-conflicting-outputs */
part 'grafikData.g.dart';

@HiveType(typeId: 2)
class GrafikData extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String price;

  GrafikData({
    required this.id,
    required this.price,
  });
}
