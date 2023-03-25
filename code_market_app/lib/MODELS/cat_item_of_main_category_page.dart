import 'package:code_market_app/MODELS/cat_item_bellow_search.dart';

class cat_item_of_main_category_page {
  final String name;
  final String image;
  final String desc;
  final num price;
  final String f_image;
  final String s_image;
  final String t_image;
  final String fo_image;
  final String fi_image;

  cat_item_of_main_category_page({
    required this.name,
    required this.image,
    required this.desc,
    required this.price,
    required this.f_image,
    required this.s_image,
    required this.t_image,
    required this.fo_image,
    required this.fi_image,
  });
  cat_item_of_main_category_page copyWith({
    String? name,
    String? image,
    String? desc,
    num? price,
    String? f_image,
    String? s_image,
    String? t_image,
    String? fo_image,
    String? fi_image,

}){
    return cat_item_of_main_category_page(
      name: name ?? this.name,
      image:  image ?? this.image,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      f_image: f_image ?? this.f_image,
      s_image: s_image ?? this.s_image,
      t_image: t_image ?? this.t_image,
      fo_image: fo_image ?? this.fo_image,
      fi_image: fi_image ?? this.fi_image,

    );
  }

  Map<String,dynamic> toMap(){
    return <String , dynamic> {
      'name': name,
      'image': image,
      'desc': desc,
      'price': price,
      'f_image': f_image,
      's_image': s_image,
      't_image': t_image,
      'fo_image': fo_image,
      'fi_image': fi_image,
    };
  }
  factory cat_item_of_main_category_page.fromMap(Map<String , dynamic>map){
    return cat_item_of_main_category_page(
      name: map['name'] as String,
      image: map['image'] as String,
      desc: map['desc'] as String,
      price: map['price'] as num,
      f_image: map['f_image'] as String,
      s_image: map['s_image'] as String,
      t_image: map['t_image'] as String,
      fo_image: map['fo_image'] as String,
      fi_image: map['fi_image'] as String,

    );
  }
}
// abhay daki
List<cat_item_of_main_category_page> main_page_of_category_temp = [
  cat_item_of_main_category_page(
      name: "food",
      image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      desc: "this is food tamplate",
      price: 100,
      f_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      s_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      t_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      fo_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      fi_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75"),cat_item_of_main_category_page(
      name: "food",
      image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      desc: "this is food tamplate",
      price: 100,
      f_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      s_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      t_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      fo_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      fi_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75"),cat_item_of_main_category_page(
      name: "food",
      image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      desc: "this is food tamplate",
      price: 100,
      f_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      s_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      t_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      fo_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      fi_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75"),cat_item_of_main_category_page(
      name: "food",
      image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      desc: "this is food tamplate",
      price: 100,
      f_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      s_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      t_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      fo_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      fi_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75"),cat_item_of_main_category_page(
      name: "food",
      image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      desc: "this is food tamplate",
      price: 100,
      f_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      s_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      t_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      fo_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      fi_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75"),cat_item_of_main_category_page(
      name: "food",
      image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      desc: "this is food tamplate",
      price: 100,
      f_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      s_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      t_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      fo_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      fi_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75"),cat_item_of_main_category_page(
      name: "food",
      image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      desc: "this is food tamplate",
      price: 100,
      f_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      s_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      t_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      fo_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      fi_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75"),
  cat_item_of_main_category_page(
      name: "food",
      image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      desc: "this is food tamplate",
      price: 100,
      f_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      s_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      t_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      fo_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75",
      fi_image:
          "https://code.market/_next/image?url=https%3A%2F%2Fgraphql.code.market%2Fwp-content%2Fuploads%2F2023%2F03%2FMedico-Ui-Template-Flutter-33-Supported.png&w=640&q=75"),
];
