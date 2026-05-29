// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_sales_item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CreditSalesItemModelAdapter extends TypeAdapter<CreditSalesItemModel> {
  @override
  final int typeId = 0;

  @override
  CreditSalesItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CreditSalesItemModel(
      name: fields[0] as String,
      price: fields[1] as String,
      notes: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CreditSalesItemModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.notes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreditSalesItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
