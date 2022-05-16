 import 'dart:convert';
ExamCategoryModel2 examCategoryModel2FromJson(String str) => ExamCategoryModel2.fromJson(json.decode(str));
String examCategoryModel2ToJson(ExamCategoryModel2 data) => json.encode(data.toJson());
class ExamCategoryModel2 {
  ExamCategoryModel2({
      List<Categories>? categories, 
      String? count,}){
    _categories = categories;
    _count = count;
}

  ExamCategoryModel2.fromJson(dynamic json) {
    if (json['categories'] != null) {
      _categories = [];
      json['categories'].forEach((v) {
        _categories?.add(Categories.fromJson(v));
      });
    }
    _count = json['count'];
  }
  List<Categories>? _categories;
  String? _count;
ExamCategoryModel2 copyWith({  List<Categories>? categories,
  String? count,
}) => ExamCategoryModel2(  categories: categories ?? _categories,
  count: count ?? _count,
);
  List<Categories>? get categories => _categories;
  String? get count => _count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_categories != null) {
      map['categories'] = _categories?.map((v) => v.toJson()).toList();
    }
    map['count'] = _count;
    return map;
  }

}

Categories categoriesFromJson(String str) => Categories.fromJson(json.decode(str));
String categoriesToJson(Categories data) => json.encode(data.toJson());
class Categories {
  Categories({
      bool? active, 
      List<Children>? children, 
      String? description, 
      String? id, 
      String? image, 
      String? name, 
      String? order, 
      String? slug, 
      bool? wide,}){
    _active = active;
    _children = children;
    _description = description;
    _id = id;
    _image = image;
    _name = name;
    _order = order;
    _slug = slug;
    _wide = wide;
}

  Categories.fromJson(dynamic json) {
    _active = json['active'];
    if (json['children'] != null) {
      _children = [];
      json['children'].forEach((v) {
        _children?.add(Children.fromJson(v));
      });
    }
    _description = json['description'];
    _id = json['id'];
    _image = json['image'];
    _name = json['name'];
    _order = json['order'];
    _slug = json['slug'];
    _wide = json['wide'];
  }
  bool? _active;
  List<Children>? _children;
  String? _description;
  String? _id;
  String? _image;
  String? _name;
  String? _order;
  String? _slug;
  bool? _wide;
Categories copyWith({  bool? active,
  List<Children>? children,
  String? description,
  String? id,
  String? image,
  String? name,
  String? order,
  String? slug,
  bool? wide,
}) => Categories(  active: active ?? _active,
  children: children ?? _children,
  description: description ?? _description,
  id: id ?? _id,
  image: image ?? _image,
  name: name ?? _name,
  order: order ?? _order,
  slug: slug ?? _slug,
  wide: wide ?? _wide,
);
  bool? get active => _active;
  List<Children>? get children => _children;
  String? get description => _description;
  String? get id => _id;
  String? get image => _image;
  String? get name => _name;
  String? get order => _order;
  String? get slug => _slug;
  bool? get wide => _wide;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    if (_children != null) {
      map['children'] = _children?.map((v) => v.toJson()).toList();
    }
    map['description'] = _description;
    map['id'] = _id;
    map['image'] = _image;
    map['name'] = _name;
    map['order'] = _order;
    map['slug'] = _slug;
    map['wide'] = _wide;
    return map;
  }

}

Children childrenFromJson(String str) => Children.fromJson(json.decode(str));
String childrenToJson(Children data) => json.encode(data.toJson());
class Children {
  Children({
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

  Children.fromJson(dynamic json) {
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
Children copyWith({  bool? active,
  String? createdAt,
  String? description,
  String? id,
  String? image,
  String? name,
  String? order,
  String? slug,
  String? updatedAt,
}) => Children(  active: active ?? _active,
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