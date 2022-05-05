import 'package:json_annotation/json_annotation.dart';

import 'category_id_model.dart';

part 'category_id_model_list.g.dart';

@JsonSerializable(explicitToJson: true)
class CategoryIdModelList {
  final List<CategoryIdModel>? children;
  final bool? active;
  CategoryIdModelList(this.children, this.active);

  factory CategoryIdModelList.fromJson(Map<String, dynamic> json) => _$CategoryIdModelListFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryIdModelListToJson(this);
}