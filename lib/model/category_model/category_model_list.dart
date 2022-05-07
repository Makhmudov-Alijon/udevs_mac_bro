import 'package:json_annotation/json_annotation.dart';
import 'package:udevs_mac_bro/model/category_model/categoris_model.dart';

part 'category_model_list.g.dart';

@JsonSerializable(explicitToJson: true)
class CategoryModelList {
  /*

{
  "categories": [
    {
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

      "description": "string",
      "id": "string",
      "image": "string",
      "name": "string",
      "order": "0",
      "slug": "string",
      "wide": true
    }
  ],
  "count": "0"
}
   */

final List<CategoryModelItem> categories;
final String count;
  CategoryModelList(this.categories, this.count);

  factory CategoryModelList.fromJson(Map<String, dynamic> json) => _$CategoryModelListFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelListToJson(this);
}