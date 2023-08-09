import 'dart:convert';

List<Images> imagesFromJson(String str) =>
    List<Images>.from(json.decode(str).map((x) => Images.fromJson(x)));

String imagesToJson(List<Images> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Images {
  int? id;
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
