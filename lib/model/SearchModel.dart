/// count : "0"
/// products : [{"id":"string","image":"string","name":"string","slug":"string"}]

class SearchModel {
  SearchModel({
      String? count, 
      List<Products>? products,}){
    _count = count;
    _products = products;
}

  SearchModel.fromJson(dynamic json) {
    _count = json['count'];
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products?.add(Products.fromJson(v));
      });
    }
  }
  String? _count;
  List<Products>? _products;
SearchModel copyWith({  String? count,
  List<Products>? products,
}) => SearchModel(  count: count ?? _count,
  products: products ?? _products,
);
  String? get count => _count;
  List<Products>? get products => _products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = _count;
    if (_products != null) {
      map['products'] = _products?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "string"
/// image : "string"
/// name : "string"
/// slug : "string"

class Products {
  Products({
      String? id, 
      String? image, 
      String? name, 
      String? slug,}){
    _id = id;
    _image = image;
    _name = name;
    _slug = slug;
}

  Products.fromJson(dynamic json) {
    _id = json['id'];
    _image = json['image'];
    _name = json['name'];
    _slug = json['slug'];
  }
  String? _id;
  String? _image;
  String? _name;
  String? _slug;
Products copyWith({  String? id,
  String? image,
  String? name,
  String? slug,
}) => Products(  id: id ?? _id,
  image: image ?? _image,
  name: name ?? _name,
  slug: slug ?? _slug,
);
  String? get id => _id;
  String? get image => _image;
  String? get name => _name;
  String? get slug => _slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['image'] = _image;
    map['name'] = _name;
    map['slug'] = _slug;
    return map;
  }

}