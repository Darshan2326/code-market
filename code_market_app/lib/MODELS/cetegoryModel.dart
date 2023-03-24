import 'package:code_market_app/MODELS/models.dart';
import 'dart:convert';

class FlutterCetegoryModel {
  static List<FlutterItems> item = [];

  FlutterItems getByid(int id) =>
      item.firstWhere((element) => element.id == id, orElse: null);

  FlutterItems getByposition (int pos) => item[pos];
}

class FlutterItems {
  final int id;
  final String name;
  final String desc;
  final String image;

  FlutterItems({
    required this.id,
    required this.name,
    required this.desc,
    required this.image,
  });

  FlutterItems copyWith({int? id, String? name, String? desc, String? image}) {
    return FlutterItems(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "name": name,
      "desc": desc,
      "image": image,
    };
  }

  factory FlutterItems.fromMap(Map<String, dynamic> map) {
    return FlutterItems(
      id: map["id"] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FlutterItems.fromjson(String source) =>
      FlutterItems.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FlutterItems(id:$id, name:$name,desc:$desc,image:$image)';
  }

  @override
  bool operator ==(covariant FlutterItems other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.image == image;
  }

  @override
  int get hasCode {
    return id.hashCode ^ name.hashCode ^ desc.hashCode ^ image.hashCode;
  }
}
