// To parse this JSON data, do
//
//     final catagories = catagoriesFromJson(jsonString);

import 'dart:convert';

import 'package:hive/hive.dart';
part 'catagory.g.dart';

List<Catagory> catagoriesFromJson(String str) =>
    List<Catagory>.from(json.decode(str).map((x) => Catagory.fromJson(x)));

@HiveType(typeId: 3)
class Catagory {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String icon;

  Catagory({
    required this.id,
    required this.name,
    required this.icon,
  });

  factory Catagory.fromJson(Map<String, dynamic> json) => Catagory(
        id: json["id"],
        name: json["name"],
        icon: json["icon"],
      );
}
