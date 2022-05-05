import 'package:json_annotation/json_annotation.dart';

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
  CategoryModelItem(this.active, this.description, this.id, this.image, this.name, this.order, this.slug, this.wide);

  factory CategoryModelItem.fromJson(Map<String, dynamic> json) => _$CategoryModelItemFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelItemToJson(this);
}