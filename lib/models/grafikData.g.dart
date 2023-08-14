// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grafikData.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GrafikDataAdapter extends TypeAdapter<GrafikData> {
  @override
  final int typeId = 2;

  @override
  GrafikData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GrafikData(
      id: fields[0] as String,
      price: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, GrafikData obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GrafikDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
