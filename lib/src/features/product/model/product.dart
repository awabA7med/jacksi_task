import 'package:jacksi_task/src/features/home_screen/view/content/catagories/model/category.dart';
import 'dart:convert';

import 'package:jacksi_task/src/features/product/model/image.dart';

List<Product> catagoriesFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

class Product {
  int? id;
  String? name;
  String? storeName;
  num? price;
  String? currency;
  Catagory? catagory;
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
