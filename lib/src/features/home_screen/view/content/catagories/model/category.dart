// To parse this JSON data, do
//
//     final catagories = catagoriesFromJson(jsonString);

import 'dart:convert';

List<Catagory> catagoriesFromJson(String str) =>
    List<Catagory>.from(json.decode(str).map((x) => Catagory.fromJson(x)));

class Catagory {
  int id;
  String name;
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
