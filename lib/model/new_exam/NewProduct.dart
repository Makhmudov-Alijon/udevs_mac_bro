class NewProduct {
  NewProduct({
      FeaturedList? featuredList,}){
    _featuredList = featuredList;
}

  NewProduct.fromJson(dynamic json) {
    _featuredList = json['featured_list'];
  }
  FeaturedList? _featuredList;
NewProduct copyWith({  FeaturedList? featuredList,
}) => NewProduct(  featuredList: featuredList ?? _featuredList,
);
  FeaturedList? get featuredList => _featuredList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['featured_list'] = _featuredList;
    return map;
  }

}

class FeaturedList {
  FeaturedList({
      bool? active, 
      String? createdAt, 
      String? description, 
      String? id, 
      String? lang, 
      String? order, 
      List<Productss>? products,
      String? slug, 
      String? title,}){
    _active = active;
    _createdAt = createdAt;
    _description = description;
    _id = id;
    _lang = lang;
    _order = order;
    _products = products;
    _slug = slug;
    _title = title;
}

  FeaturedList.fromJson(dynamic json) {
    _active = json['active'];
    _createdAt = json['created_at'];
    _description = json['description'];
    _id = json['id'];
    _lang = json['lang'];
    _order = json['order'];
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products?.add(Productss.fromJson(v));
      });
    }
    _slug = json['slug'];
    _title = json['title'];
  }
  bool? _active;
  String? _createdAt;
  String? _description;
  String? _id;
  String? _lang;
  String? _order;
  List<Productss>? _products;
  String? _slug;
  String? _title;
FeaturedList copyWith({  bool? active,
  String? createdAt,
  String? description,
  String? id,
  String? lang,
  String? order,
  List<Productss>? products,
  String? slug,
  String? title,
}) => FeaturedList(  active: active ?? _active,
  createdAt: createdAt ?? _createdAt,
  description: description ?? _description,
  id: id ?? _id,
  lang: lang ?? _lang,
  order: order ?? _order,
  products: products ?? _products,
  slug: slug ?? _slug,
  title: title ?? _title,
);
  bool? get active => _active;
  String? get createdAt => _createdAt;
  String? get description => _description;
  String? get id => _id;
  String? get lang => _lang;
  String? get order => _order;
  List<Productss>? get products => _products;
  String? get slug => _slug;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['created_at'] = _createdAt;
    map['description'] = _description;
    map['id'] = _id;
    map['lang'] = _lang;
    map['order'] = _order;
    if (_products != null) {
      map['products'] = _products?.map((v) => v.toJson()).toList();
    }
    map['slug'] = _slug;
    map['title'] = _title;
    return map;
  }

}

class Productss {
  Productss({
      bool? active, 
      int? cheapestPrice, 
      String? code, 
      String? id, 
      String? image, 
      InStock? inStock, 
      String? name, 
      String? order, 
      String? previewText, 
      String? slug,}){
    _active = active;
    _cheapestPrice = cheapestPrice;
    _code = code;
    _id = id;
    _image = image;
    _inStock = inStock;
    _name = name;
    _order = order;
    _previewText = previewText;
    _slug = slug;
}

  Productss.fromJson(dynamic json) {
    _active = json['active'];
    _cheapestPrice = json['cheapest_price'];
    _code = json['code'];
    _id = json['id'];
    _image = json['image'];
    _inStock = json['inStock'] != null ? InStock.fromJson(json['inStock']) : null;
    _name = json['name'];
    _order = json['order'];
    _previewText = json['preview_text'];
    _slug = json['slug'];
  }
  bool? _active;
  int? _cheapestPrice;
  String? _code;
  String? _id;
  String? _image;
  InStock? _inStock;
  String? _name;
  String? _order;
  String? _previewText;
  String? _slug;
Productss copyWith({  bool? active,
  int? cheapestPrice,
  String? code,
  String? id,
  String? image,
  InStock? inStock,
  String? name,
  String? order,
  String? previewText,
  String? slug,
}) => Productss(  active: active ?? _active,
  cheapestPrice: cheapestPrice ?? _cheapestPrice,
  code: code ?? _code,
  id: id ?? _id,
  image: image ?? _image,
  inStock: inStock ?? _inStock,
  name: name ?? _name,
  order: order ?? _order,
  previewText: previewText ?? _previewText,
  slug: slug ?? _slug,
);
  bool? get active => _active;
  int? get cheapestPrice => _cheapestPrice;
  String? get code => _code;
  String? get id => _id;
  String? get image => _image;
  InStock? get inStock => _inStock;
  String? get name => _name;
  String? get order => _order;
  String? get previewText => _previewText;
  String? get slug => _slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['cheapest_price'] = _cheapestPrice;
    map['code'] = _code;
    map['id'] = _id;
    map['image'] = _image;
    if (_inStock != null) {
      map['inStock'] = _inStock?.toJson();
    }
    map['name'] = _name;
    map['order'] = _order;
    map['preview_text'] = _previewText;
    map['slug'] = _slug;
    return map;
  }

}

class InStock {
  InStock({
      bool? samarkand, 
      bool? tashkentCity,}){
    _samarkand = samarkand;
    _tashkentCity = tashkentCity;
}

  InStock.fromJson(dynamic json) {
    _samarkand = json['samarkand'];
    _tashkentCity = json['tashkent_city'];
  }
  bool? _samarkand;
  bool? _tashkentCity;
InStock copyWith({  bool? samarkand,
  bool? tashkentCity,
}) => InStock(  samarkand: samarkand ?? _samarkand,
  tashkentCity: tashkentCity ?? _tashkentCity,
);
  bool? get samarkand => _samarkand;
  bool? get tashkentCity => _tashkentCity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['samarkand'] = _samarkand;
    map['tashkent_city'] = _tashkentCity;
    return map;
  }

}