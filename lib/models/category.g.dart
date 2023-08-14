// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryListAdapter extends TypeAdapter<CategoryList> {
  @override
  final int typeId = 1;

  @override
  CategoryList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoryList(
      shoping: (fields[1] as List).cast<String>(),
      fueloil: (fields[2] as List).cast<String>(),
      electronics: (fields[3] as List).cast<String>(),
      bill: (fields[4] as List).cast<String>(),
      other: (fields[5] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, CategoryList obj) {
    writer
      ..writeByte(5)
      ..writeByte(1)
      ..write(obj.shoping)
      ..writeByte(2)
      ..write(obj.fueloil)
      ..writeByte(3)
      ..write(obj.electronics)
      ..writeByte(4)
      ..write(obj.bill)
      ..writeByte(5)
      ..write(obj.other);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
