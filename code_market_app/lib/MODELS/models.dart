// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CodeMarketModels {
  static List<Items> item = [];

  Items getByid(int id) =>
      item.firstWhere((element) => element.id == id, orElse: null);

  Items getByposition(int pos) => item[pos];
}

class Items {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String images;
  final String appdesc;
  final String f_image;
  final String s_image;
  final String t_image;
  final String fo_image;
  final String fi_image;

  Items({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.images,
    required this.appdesc,
    required this.f_image,
    required this.s_image,
    required this.t_image,
    required this.fo_image,
    required this.fi_image,
  });

  Items copyWith({
    int? id,
    String? name,
    String? desc,
    num? price,
    String? color,
    String? images,
    String? appdesc,
    String? f_image,
    String? s_image,
    String? t_image,
    String? fo_image,
    String? fi_image,
  }) {
    return Items(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      images: images ?? this.images,
      appdesc: appdesc ?? this.appdesc,
      f_image: f_image ?? this.f_image,
      s_image: s_image ?? this.s_image,
      t_image: t_image ?? this.t_image,
      fo_image: fo_image ?? this.fo_image,
      fi_image: fi_image ?? this.fi_image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'images': images,
      'appdesc': appdesc,
      'f_image': f_image,
      's_image': s_image,
      't_image': t_image,
      'fo_image': fo_image,
      'fi_image': fi_image,
    };
  }

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as num,
      color: map['color'] as String,
      images: map['images'] as String,
      appdesc: map['appdesc'] as String,
      f_image: map['f_image'] as String,
      s_image: map['s_image'] as String,
      t_image: map['t_image'] as String,
      fo_image: map['fo_image'] as String,
      fi_image: map['fi_image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Items.fromJson(String source) =>
      Items.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Items(id: $id, name: $name, desc: $desc, price: $price, color: $color, images: $images, appdesc:$appdesc, f_image:$f_image,s_image:$s_image,t_image:$t_image,fo_image:$fo_image,fi_image:$fi_image )';
  }

  @override
  bool operator ==(covariant Items other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.color == color &&
        other.images == images &&
        other.appdesc == appdesc &&
        other.f_image == f_image &&
        other.s_image == s_image &&
        other.t_image == t_image &&
        other.fo_image == fo_image &&
        other.fi_image == fi_image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        images.hashCode ^
        appdesc.hashCode ^
        f_image.hashCode ^
        s_image.hashCode ^
        t_image.hashCode ^
        fo_image.hashCode ^
        fi_image.hashCode;
  }
}
