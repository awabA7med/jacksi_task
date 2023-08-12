import 'package:hive/hive.dart';
import 'package:jacksi_task/src/features/home_screen/view/content/catagories/model/catagory.dart';
import 'dart:convert';

import 'package:jacksi_task/src/features/product/model/images.dart';

part 'product.g.dart';

List<Product> catagoriesFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

@HiveType(typeId: 1)
class Product extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? storeName;
  @HiveField(3)
  num? price;
  @HiveField(4)
  String? currency;
  @HiveField(5)
  Catagory? catagory;
  @HiveField(6)
  List<Images?>? images;

  Product({
    this.id,
    this.name,
    this.storeName,
    this.price,
    this.currency,
    this.catagory,
    this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
      id: json["id"],
      name: json["name"],
      storeName: json["store_name"],
      price: json["price"],
      currency: json["currency"],
      catagory: Catagory.fromJson(json["store_name"]),
      images: imagesFromJson(json["images"]));
}
