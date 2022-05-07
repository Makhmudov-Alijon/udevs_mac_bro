import 'package:json_annotation/json_annotation.dart';

part 'category_children.g.dart';

@JsonSerializable(explicitToJson: true)
class CategoryChildrenModel {


  final String? id;
  final String? image;
  final String? name;
  final String? slug;


  CategoryChildrenModel(this.id, this.image, this.name, this.slug);

  factory CategoryChildrenModel.fromJson(Map<String, dynamic> json) => _$CategoryChildrenModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryChildrenModelToJson(this);
}