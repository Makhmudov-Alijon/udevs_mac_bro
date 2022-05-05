import 'package:json_annotation/json_annotation.dart';

part 'category_id_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CategoryIdModel {
/*
{
  "category": {
    "active": true,
    "children": [
      {
        "active": true,
        "created_at": "string",
        "description": "string",
        "id": "string",
        "image": "string",
        "name": "string",
        "order": "0",
        "slug": "string",
        "updated_at": "string"
      }
    ],
  }
}
 */
final bool? active;
final String? description;
final String? id;
final String? image;
final String? name;
final String? slug;
  CategoryIdModel(this.active, this.description, this.id, this.image, this.name, this.slug);

  factory CategoryIdModel.fromJson(Map<String, dynamic> json) => _$CategoryIdModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryIdModelToJson(this);
}