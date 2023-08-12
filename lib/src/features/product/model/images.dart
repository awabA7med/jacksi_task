import 'dart:convert';

import 'package:hive/hive.dart';

part 'images.g.dart';

List<Images> imagesFromJson(String str) =>
    List<Images>.from(json.decode(str).map((x) => Images.fromJson(x)));

String imagesToJson(List<Images> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@HiveType(typeId: 2)
class Images extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? image;

  Images({
    this.id,
    this.image,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        id: json["id"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
      };
}
