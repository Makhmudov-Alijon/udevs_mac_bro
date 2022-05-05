import 'package:json_annotation/json_annotation.dart';

import 'category_id_model_list.dart';

part 'category_id_model_map.g.dart';

@JsonSerializable(explicitToJson: true)
class CategoryIdModelMap {

  final CategoryIdModelList? category;
  CategoryIdModelMap(this.category);

  factory CategoryIdModelMap.fromJson(Map<String, dynamic> json) => _$CategoryIdModelMapFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryIdModelMapToJson(this);
}