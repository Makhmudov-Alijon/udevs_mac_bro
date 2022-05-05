import 'package:json_annotation/json_annotation.dart';
import 'package:udevs_mac_bro/model/new_exam/new_product_list_item.dart';




part 'new_product_list.g.dart';

@JsonSerializable(explicitToJson: true)

class FeaturedList {
  /*
  {
  "featured_list": {
    "active": true,
    "created_at": "string",
    "description": "string",
    "id": "string",
    "lang": "string",
    "order": "0",
    "products": [
      {
        "active": true,
        "cheapest_price": 0,
        "code": "string",
        "id": "string",
        "image": "string",
        "inStock": {
          "samarkand": true,
          "tashkent_city": true
        },
        "name": "string",
        "order": "0",
        "preview_text": "string",
        "slug": "string"
      }
    ],
    "slug": "string",
    "title": "string"
  }
}
   */
final bool? active;
final List<NewExamProductList> products;
  FeaturedList(this.active, this.products);

  factory FeaturedList.fromJson(Map<String, dynamic> json) => _$FeaturedListFromJson(json);

  Map<String, dynamic> toJson() => _$FeaturedListToJson(this);
}