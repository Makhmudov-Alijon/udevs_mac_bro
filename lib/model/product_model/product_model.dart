class ProductModel {
  ProductModel({
      Product? product,}){
    _product = product;
}

  ProductModel.fromJson(dynamic json) {
    _product = json['product'] != null ? Product.fromJson(json['product']) : null;
  }
  Product? _product;
ProductModel copyWith({  Product? product,
}) => ProductModel(  product: product ?? _product,
);
  Product? get product => _product;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_product != null) {
      map['product'] = _product?.toJson();
    }
    return map;
  }

}

class Product {
  Product({
      bool? active, 
      int? averageRate, 
      Category? category, 
      String? characteristics, 
      int? cheapestPrice, 
      String? code, 
      String? description, 
      int? discount, 
      List<String>? gallery, 
      String? id, 
      String? image, 
      int? installmentAmount, 
      Meta? meta, 
      String? name, 
      String? order, 
      String? previewText,
      Price1? price,
      List<Properties>? properties, 
      String? reviewsCount, 
      String? slug, 
      List<Variants>? variants, 
      int? warrantyPeriod,}){
    _active = active;
    _averageRate = averageRate;
    _category = category;
    _characteristics = characteristics;
    _cheapestPrice = cheapestPrice;
    _code = code;
    _description = description;
    _discount = discount;
    _gallery = gallery;
    _id = id;
    _image = image;
    _installmentAmount = installmentAmount;
    _meta = meta;
    _name = name;
    _order = order;
    _previewText = previewText;
    _price = price;
    _properties = properties;
    _reviewsCount = reviewsCount;
    _slug = slug;
    _variants = variants;
    _warrantyPeriod = warrantyPeriod;
}

  Product.fromJson(dynamic json) {
    _active = json['active'];
    _averageRate = json['average_rate'];
    _category = json['category'] != null ? Category.fromJson(json['category']) : null;
    _characteristics = json['characteristics'];
    _cheapestPrice = json['cheapest_price'];
    _code = json['code'];
    _description = json['description'];
    _discount = json['discount'];
    _gallery = json['gallery'] != null ? json['gallery'].cast<String>() : [];
    _id = json['id'];
    _image = json['image'];
    _installmentAmount = json['installment_amount'];
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    _name = json['name'];
    _order = json['order'];
    _previewText = json['preview_text'];
    _price = json['price'] != null ? Price1.fromJson(json['price']) : null;
    if (json['properties'] != null) {
      _properties = [];
      json['properties'].forEach((v) {
        _properties?.add(Properties.fromJson(v));
      });
    }
    _reviewsCount = json['reviews_count'];
    _slug = json['slug'];
    if (json['variants'] != null) {
      _variants = [];
      json['variants'].forEach((v) {
        _variants?.add(Variants.fromJson(v));
      });
    }
    _warrantyPeriod = json['warranty_period'];
  }
  bool? _active;
  int? _averageRate;
  Category? _category;
  String? _characteristics;
  int? _cheapestPrice;
  String? _code;
  String? _description;
  int? _discount;
  List<String>? _gallery;
  String? _id;
  String? _image;
  int? _installmentAmount;
  Meta? _meta;
  String? _name;
  String? _order;
  String? _previewText;
  Price1? _price;
  List<Properties>? _properties;
  String? _reviewsCount;
  String? _slug;
  List<Variants>? _variants;
  int? _warrantyPeriod;
Product copyWith({  bool? active,
  int? averageRate,
  Category? category,
  String? characteristics,
  int? cheapestPrice,
  String? code,
  String? description,
  int? discount,
  List<String>? gallery,
  String? id,
  String? image,
  int? installmentAmount,
  Meta? meta,
  String? name,
  String? order,
  String? previewText,
  Price1? price,
  List<Properties>? properties,
  String? reviewsCount,
  String? slug,
  List<Variants>? variants,
  int? warrantyPeriod,
}) => Product(  active: active ?? _active,
  averageRate: averageRate ?? _averageRate,
  category: category ?? _category,
  characteristics: characteristics ?? _characteristics,
  cheapestPrice: cheapestPrice ?? _cheapestPrice,
  code: code ?? _code,
  description: description ?? _description,
  discount: discount ?? _discount,
  gallery: gallery ?? _gallery,
  id: id ?? _id,
  image: image ?? _image,
  installmentAmount: installmentAmount ?? _installmentAmount,
  meta: meta ?? _meta,
  name: name ?? _name,
  order: order ?? _order,
  previewText: previewText ?? _previewText,
  price: price ?? _price,
  properties: properties ?? _properties,
  reviewsCount: reviewsCount ?? _reviewsCount,
  slug: slug ?? _slug,
  variants: variants ?? _variants,
  warrantyPeriod: warrantyPeriod ?? _warrantyPeriod,
);
  bool? get active => _active;
  int? get averageRate => _averageRate;
  Category? get category => _category;
  String? get characteristics => _characteristics;
  int? get cheapestPrice => _cheapestPrice;
  String? get code => _code;
  String? get description => _description;
  int? get discount => _discount;
  List<String>? get gallery => _gallery;
  String? get id => _id;
  String? get image => _image;
  int? get installmentAmount => _installmentAmount;
  Meta? get meta => _meta;
  String? get name => _name;
  String? get order => _order;
  String? get previewText => _previewText;
  Price1? get price => _price;
  List<Properties>? get properties => _properties;
  String? get reviewsCount => _reviewsCount;
  String? get slug => _slug;
  List<Variants>? get variants => _variants;
  int? get warrantyPeriod => _warrantyPeriod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['average_rate'] = _averageRate;
    if (_category != null) {
      map['category'] = _category?.toJson();
    }
    map['characteristics'] = _characteristics;
    map['cheapest_price'] = _cheapestPrice;
    map['code'] = _code;
    map['description'] = _description;
    map['discount'] = _discount;
    map['gallery'] = _gallery;
    map['id'] = _id;
    map['image'] = _image;
    map['installment_amount'] = _installmentAmount;
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    map['name'] = _name;
    map['order'] = _order;
    map['preview_text'] = _previewText;
    if (_price != null) {
      map['price'] = _price?.toJson();
    }
    if (_properties != null) {
      map['properties'] = _properties?.map((v) => v.toJson()).toList();
    }
    map['reviews_count'] = _reviewsCount;
    map['slug'] = _slug;
    if (_variants != null) {
      map['variants'] = _variants?.map((v) => v.toJson()).toList();
    }
    map['warranty_period'] = _warrantyPeriod;
    return map;
  }

}

class Variants {
  Variants({
      String? name,
    Valuee? value,}){
    _name = name;
    _value = value;
}

  Variants.fromJson(dynamic json) {
    _name = json['name'];
    _value = json['value'] != null ? Valuee.fromJson(json['value']) : null;
  }
  String? _name;
  Valuee? _value;
Variants copyWith({  String? name,
  Valuee? value,
}) => Variants(  name: name ?? _name,
  value: value ?? _value,
);
  String? get name => _name;
  Valuee? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    if (_value != null) {
      map['value'] = _value?.toJson();
    }
    return map;
  }

}

class Valuee {
  Valuee({
      bool? active, 
      String? characteristics, 
      String? description, 
      List<String>? gallery, 
      String? id, 
      String? image, 
      int? installmentAmount, 
      String? lang, 
      String? name, 
      String? previewText, 
      Price? price, 
      String? slug, 
      int? warrantyPeriod,}){
    _active = active;
    _characteristics = characteristics;
    _description = description;
    _gallery = gallery;
    _id = id;
    _image = image;
    _installmentAmount = installmentAmount;
    _lang = lang;
    _name = name;
    _previewText = previewText;
    _price = price;
    _slug = slug;
    _warrantyPeriod = warrantyPeriod;
}

  Valuee.fromJson(dynamic json) {
    _active = json['active'];
    _characteristics = json['characteristics'];
    _description = json['description'];
    _gallery = json['gallery'] != null ? json['gallery'].cast<String>() : [];
    _id = json['id'];
    _image = json['image'];
    _installmentAmount = json['installment_amount'];
    _lang = json['lang'];
    _name = json['name'];
    _previewText = json['preview_text'];
    _price = json['price'] != null ? Price.fromJson(json['price']) : null;
    _slug = json['slug'];
    _warrantyPeriod = json['warranty_period'];
  }
  bool? _active;
  String? _characteristics;
  String? _description;
  List<String>? _gallery;
  String? _id;
  String? _image;
  int? _installmentAmount;
  String? _lang;
  String? _name;
  String? _previewText;
  Price? _price;
  String? _slug;
  int? _warrantyPeriod;
  Valuee copyWith({  bool? active,
  String? characteristics,
  String? description,
  List<String>? gallery,
  String? id,
  String? image,
  int? installmentAmount,
  String? lang,
  String? name,
  String? previewText,
  Price? price,
  String? slug,
  int? warrantyPeriod,
}) => Valuee(  active: active ?? _active,
  characteristics: characteristics ?? _characteristics,
  description: description ?? _description,
  gallery: gallery ?? _gallery,
  id: id ?? _id,
  image: image ?? _image,
  installmentAmount: installmentAmount ?? _installmentAmount,
  lang: lang ?? _lang,
  name: name ?? _name,
  previewText: previewText ?? _previewText,
  price: price ?? _price,
  slug: slug ?? _slug,
  warrantyPeriod: warrantyPeriod ?? _warrantyPeriod,
);
  bool? get active => _active;
  String? get characteristics => _characteristics;
  String? get description => _description;
  List<String>? get gallery => _gallery;
  String? get id => _id;
  String? get image => _image;
  int? get installmentAmount => _installmentAmount;
  String? get lang => _lang;
  String? get name => _name;
  String? get previewText => _previewText;
  Price? get price => _price;
  String? get slug => _slug;
  int? get warrantyPeriod => _warrantyPeriod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['characteristics'] = _characteristics;
    map['description'] = _description;
    map['gallery'] = _gallery;
    map['id'] = _id;
    map['image'] = _image;
    map['installment_amount'] = _installmentAmount;
    map['lang'] = _lang;
    map['name'] = _name;
    map['preview_text'] = _previewText;
    if (_price != null) {
      map['price'] = _price?.toJson();
    }
    map['slug'] = _slug;
    map['warranty_period'] = _warrantyPeriod;
    return map;
  }

}

class Price {
  Price({
      int? oldPrice, 
      int? price, 
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
  int? _price;
  int? _secondPrice;
  int? _secondUzsPrice;
  int? _uzsPrice;
Price copyWith({  int? oldPrice,
  int? price,
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
  int? get price => _price;
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

class Properties {
  Properties({
      String? id, 
      Property? property, 
      List<Value1>? value,}){
    _id = id;
    _property = property;
    _value = value;
}

  Properties.fromJson(dynamic json) {
    _id = json['id'];
    _property = json['property'] != null ? Property.fromJson(json['property']) : null;
    if (json['value'] != null) {
      _value = [];
      json['value'].forEach((v) {
        _value?.add(Value1.fromJson(v));
      });
    }
  }
  String? _id;
  Property? _property;
  List<Value1>? _value;
Properties copyWith({  String? id,
  Property? property,
  List<Value1>? value,
}) => Properties(  id: id ?? _id,
  property: property ?? _property,
  value: value ?? _value,
);
  String? get id => _id;
  Property? get property => _property;
  List<Value1>? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_property != null) {
      map['property'] = _property?.toJson();
    }
    if (_value != null) {
      map['value'] = _value?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Value1 {
  Value1({
  String? extra,
  String? name,
  String? order,
  String? value,}){
  _extra = extra;
  _name = name;
  _order = order;
  _value = value;
}

  Value1.fromJson(dynamic json) {
_extra = json['extra'];
_name = json['name'];
_order = json['order'];
_value = json['value'];
}
String? _extra;
String? _name;
String? _order;
String? _value;
  Value1 copyWith({  String? extra,
  String? name,
  String? order,
  String? value,
}) => Value1(  extra: extra ?? _extra,
  name: name ?? _name,
  order: order ?? _order,
  value: value ?? _value,
);
String? get extra => _extra;
String? get name => _name;
String? get order => _order;
String? get value => _value;

Map<String, dynamic> toJson() {
  final map = <String, dynamic>{};
  map['extra'] = _extra;
  map['name'] = _name;
  map['order'] = _order;
  map['value'] = _value;
  return map;
}

}

class Property {
  Property({
      bool? active, 
      String? description, 
      String? id, 
      String? lang, 
      String? name, 
      String? order, 
      String? slug, 
      String? type,}){
    _active = active;
    _description = description;
    _id = id;
    _lang = lang;
    _name = name;
    _order = order;
    _slug = slug;
    _type = type;
}

  Property.fromJson(dynamic json) {
    _active = json['active'];
    _description = json['description'];
    _id = json['id'];
    _lang = json['lang'];
    _name = json['name'];
    _order = json['order'];
    _slug = json['slug'];
    _type = json['type'];
  }
  bool? _active;
  String? _description;
  String? _id;
  String? _lang;
  String? _name;
  String? _order;
  String? _slug;
  String? _type;
Property copyWith({  bool? active,
  String? description,
  String? id,
  String? lang,
  String? name,
  String? order,
  String? slug,
  String? type,
}) => Property(  active: active ?? _active,
  description: description ?? _description,
  id: id ?? _id,
  lang: lang ?? _lang,
  name: name ?? _name,
  order: order ?? _order,
  slug: slug ?? _slug,
  type: type ?? _type,
);
  bool? get active => _active;
  String? get description => _description;
  String? get id => _id;
  String? get lang => _lang;
  String? get name => _name;
  String? get order => _order;
  String? get slug => _slug;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['description'] = _description;
    map['id'] = _id;
    map['lang'] = _lang;
    map['name'] = _name;
    map['order'] = _order;
    map['slug'] = _slug;
    map['type'] = _type;
    return map;
  }

}

class Price1 {
  Price1({
      int? oldPrice,
      int? price,
      int? secondPrice,
      int? secondUzsPrice,
      int? uzsPrice,}){
    _oldPrice = oldPrice;
    _price = price;
    _secondPrice = secondPrice;
    _secondUzsPrice = secondUzsPrice;
    _uzsPrice = uzsPrice;
}

  Price1.fromJson(dynamic json) {
    _oldPrice = json['old_price'];
    _price = json['price'];
    _secondPrice = json['second_price'];
    _secondUzsPrice = json['second_uzs_price'];
    _uzsPrice = json['uzs_price'];
  }
  int? _oldPrice;
  int? _price;
  int? _secondPrice;
  int? _secondUzsPrice;
  int? _uzsPrice;
  Price1 copyWith({  int? oldPrice,
  int? price,
  int? secondPrice,
  int? secondUzsPrice,
  int? uzsPrice,
}) => Price1(  oldPrice: oldPrice ?? _oldPrice,
  price: price ?? _price,
  secondPrice: secondPrice ?? _secondPrice,
  secondUzsPrice: secondUzsPrice ?? _secondUzsPrice,
  uzsPrice: uzsPrice ?? _uzsPrice,
);
  int? get oldPrice => _oldPrice;
  int? get price => _price;
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

class Meta {
  Meta({
      String? description, 
      String? tags, 
      String? title,}){
    _description = description;
    _tags = tags;
    _title = title;
}

  Meta.fromJson(dynamic json) {
    _description = json['description'];
    _tags = json['tags'];
    _title = json['title'];
  }
  String? _description;
  String? _tags;
  String? _title;
Meta copyWith({  String? description,
  String? tags,
  String? title,
}) => Meta(  description: description ?? _description,
  tags: tags ?? _tags,
  title: title ?? _title,
);
  String? get description => _description;
  String? get tags => _tags;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['description'] = _description;
    map['tags'] = _tags;
    map['title'] = _title;
    return map;
  }

}

class Category {
  Category({
      bool? active, 
      String? id, 
      String? image, 
      String? name, 
      String? order, 
      Parent? parent, 
      String? slug,}){
    _active = active;
    _id = id;
    _image = image;
    _name = name;
    _order = order;
    _parent = parent;
    _slug = slug;
}

  Category.fromJson(dynamic json) {
    _active = json['active'];
    _id = json['id'];
    _image = json['image'];
    _name = json['name'];
    _order = json['order'];
    _parent = json['parent'] != null ? Parent.fromJson(json['parent']) : null;
    _slug = json['slug'];
  }
  bool? _active;
  String? _id;
  String? _image;
  String? _name;
  String? _order;
  Parent? _parent;
  String? _slug;
Category copyWith({  bool? active,
  String? id,
  String? image,
  String? name,
  String? order,
  Parent? parent,
  String? slug,
}) => Category(  active: active ?? _active,
  id: id ?? _id,
  image: image ?? _image,
  name: name ?? _name,
  order: order ?? _order,
  parent: parent ?? _parent,
  slug: slug ?? _slug,
);
  bool? get active => _active;
  String? get id => _id;
  String? get image => _image;
  String? get name => _name;
  String? get order => _order;
  Parent? get parent => _parent;
  String? get slug => _slug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['id'] = _id;
    map['image'] = _image;
    map['name'] = _name;
    map['order'] = _order;
    if (_parent != null) {
      map['parent'] = _parent?.toJson();
    }
    map['slug'] = _slug;
    return map;
  }

}

class Parent {
  Parent({
      bool? active, 
      String? createdAt, 
      String? description, 
      String? id, 
      String? image, 
      String? name, 
      String? order, 
      String? slug, 
      String? updatedAt,}){
    _active = active;
    _createdAt = createdAt;
    _description = description;
    _id = id;
    _image = image;
    _name = name;
    _order = order;
    _slug = slug;
    _updatedAt = updatedAt;
}

  Parent.fromJson(dynamic json) {
    _active = json['active'];
    _createdAt = json['created_at'];
    _description = json['description'];
    _id = json['id'];
    _image = json['image'];
    _name = json['name'];
    _order = json['order'];
    _slug = json['slug'];
    _updatedAt = json['updated_at'];
  }
  bool? _active;
  String? _createdAt;
  String? _description;
  String? _id;
  String? _image;
  String? _name;
  String? _order;
  String? _slug;
  String? _updatedAt;
Parent copyWith({  bool? active,
  String? createdAt,
  String? description,
  String? id,
  String? image,
  String? name,
  String? order,
  String? slug,
  String? updatedAt,
}) => Parent(  active: active ?? _active,
  createdAt: createdAt ?? _createdAt,
  description: description ?? _description,
  id: id ?? _id,
  image: image ?? _image,
  name: name ?? _name,
  order: order ?? _order,
  slug: slug ?? _slug,
  updatedAt: updatedAt ?? _updatedAt,
);
  bool? get active => _active;
  String? get createdAt => _createdAt;
  String? get description => _description;
  String? get id => _id;
  String? get image => _image;
  String? get name => _name;
  String? get order => _order;
  String? get slug => _slug;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['created_at'] = _createdAt;
    map['description'] = _description;
    map['id'] = _id;
    map['image'] = _image;
    map['name'] = _name;
    map['order'] = _order;
    map['slug'] = _slug;
    map['updated_at'] = _updatedAt;
    return map;
  }

}