// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductAdapter extends TypeAdapter<Product> {
  @override
  final int typeId = 1;

  @override
  Product read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Product(
      id: fields[0] as int?,
      name: fields[1] as String?,
      storeName: fields[2] as String?,
      price: fields[3] as num?,
      currency: fields[4] as String?,
      catagory: fields[5] as Catagory?,
      images: (fields[6] as List?)?.cast<Images?>(),
    );
  }

  @override
  void write(BinaryWriter writer, Product obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.storeName)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.currency)
      ..writeByte(5)
      ..write(obj.catagory)
      ..writeByte(6)
      ..write(obj.images);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
