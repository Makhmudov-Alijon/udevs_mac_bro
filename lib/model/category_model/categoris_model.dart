import 'package:json_annotation/json_annotation.dart';
import 'package:udevs_mac_bro/model/category_model/category_children.dart';

part 'categoris_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CategoryModelItem {

  final bool? active;
  final String? description;
  final String? id;
  final String? image;
  final String? name;
  final String? order;
  final String? slug;
  final bool? wide;
  final List<CategoryChildrenModel>? children;
  CategoryModelItem(this.active, this.description, this.id, this.image, this.name, this.order, this.slug, this.wide, this.children);

  factory CategoryModelItem.fromJson(Map<String, dynamic> json) => _$CategoryModelItemFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelItemToJson(this);
}