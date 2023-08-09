// To parse this JSON data, do
//
//     final catagories = catagoriesFromJson(jsonString);

import 'dart:convert';

List<Catagories> catagoriesFromJson(String str) =>
    List<Catagories>.from(json.decode(str).map((x) => Catagories.fromJson(x)));

class Catagories {
  int id;
  String name;
  String icon;

  Catagories({
    required this.id,
    required this.name,
    required this.icon,
  });

  factory Catagories.fromJson(Map<String, dynamic> json) => Catagories(
        id: json["id"],
        name: json["name"],
        icon: json["icon"],
      );
}
