import 'dart:convert';
CategoryChildItem categoryChildItemFromJson(String str) => CategoryChildItem.fromJson(json.decode(str));
String categoryChildItemToJson(CategoryChildItem data) => json.encode(data.toJson());
class CategoryChildItem {
  CategoryChildItem({
      String? count, 
      List<Products>? products,}){
    _count = count;
    _products = products;
}

  CategoryChildItem.fromJson(dynamic json) {
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
CategoryChildItem copyWith({  String? count,
  List<Products>? products,
}) => CategoryChildItem(  count: count ?? _count,
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

Products productsFromJson(String str) => Products.fromJson(json.decode(str));
String productsToJson(Products data) => json.encode(data.toJson());
class Products {
  Products({
      bool? active, 
      int? cheapestPrice, 
      String? code, 
      int? discount, 
      String? id, 
      String? image, 
      String? name, 
      String? order, 
      Price? price, 
      String? slug,}){
    _active = active;
    _cheapestPrice = cheapestPrice;
    _code = code;
    _discount = discount;
    _id = id;
    _image = image;
    _name = name;
    _order = order;
    _price = price;
    _slug = slug;
}

  Products.fromJson(dynamic json) {
    _active = json['active'];
    _cheapestPrice = json['cheapest_price'];
    _code = json['code'];
    _discount = json['discount'];
    _id = json['id'];
    _image = json['image'];
    _name = json['name'];
    _order = json['order'];
    _price = json['price'] != null ? Price.fromJson(json['price']) : null;
    _slug = json['slug'];
  }
  bool? _active;
  int? _cheapestPrice;
  String? _code;
  int? _discount;
  String? _id;
  String? _image;
  String? _name;
  String? _order;
  Price? _price;
  String? _slug;
Products copyWith({  bool? active,
  int? cheapestPrice,
  String? code,
  int? discount,
  String? id,
  String? image,
  String? name,
  String? order,
  Price? price,
  String? slug,
}) => Products(  active: active ?? _active,
  cheapestPrice: cheapestPrice ?? _cheapestPrice,
  code: code ?? _code,
  discount: discount ?? _discount,
  id: id ?? _id,
  image: image ?? _image,
  name: name ?? _name,
  order: order ?? _order,
  price: price ?? _price,
  slug: slug ?? _slug,
);
  bool? get active => _active;
  int? get cheapestPrice => _cheapestPrice;
  String? get code => _code;
  int? get discount => _discount;
  String? get id => _id;
  String? get image => _image;
  String? get name => _name;
  String? get order => _order;
  Price? get price => _price;
  String? get slug => _slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['cheapest_price'] = _cheapestPrice;
    map['code'] = _code;
    map['discount'] = _discount;
    map['id'] = _id;
    map['image'] = _image;
    map['name'] = _name;
    map['order'] = _order;
    if (_price != null) {
      map['price'] = _price?.toJson();
    }
    map['slug'] = _slug;
    return map;
  }

}

Price priceFromJson(String str) => Price.fromJson(json.decode(str));
String priceToJson(Price data) => json.encode(data.toJson());
class Price {
  Price({
      int? oldPrice,
      num? price,
      int? secondPrice, 
      int? secondUzsPrice, 
      int? uzsPrice,}){
    _oldPrice = oldPrice;
    _price = price;
    _secondPrice = secondPrice;
    _secondUzsPrice = secondUzsPrice;
    _uzsPrice = uzsPrice;
}

  Price.fromJson(dynamic json) {
    _oldPrice = json['old_price'];
    _price = json['price'];
    _secondPrice = json['second_price'];
    _secondUzsPrice = json['second_uzs_price'];
    _uzsPrice = json['uzs_price'];
  }
  int? _oldPrice;
  num? _price;
  int? _secondPrice;
  int? _secondUzsPrice;
  int? _uzsPrice;
Price copyWith({  int? oldPrice,
  num? price,
  int? secondPrice,
  int? secondUzsPrice,
  int? uzsPrice,
}) => Price(  oldPrice: oldPrice ?? _oldPrice,
  price: price ?? _price,
  secondPrice: secondPrice ?? _secondPrice,
  secondUzsPrice: secondUzsPrice ?? _secondUzsPrice,
  uzsPrice: uzsPrice ?? _uzsPrice,
);
  int? get oldPrice => _oldPrice;
  num? get price => _price;
  int? get secondPrice => _secondPrice;
  int? get secondUzsPrice => _secondUzsPrice;
  int? get uzsPrice => _uzsPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['old_price'] = _oldPrice;
    map['price'] = _price;
    map['second_price'] = _secondPrice;
    map['second_uzs_price'] = _secondUzsPrice;
    map['uzs_price'] = _uzsPrice;
    return map;
  }

}