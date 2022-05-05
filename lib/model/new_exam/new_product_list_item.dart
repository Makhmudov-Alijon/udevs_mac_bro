import 'package:json_annotation/json_annotation.dart';

part 'new_product_list_item.g.dart';

@JsonSerializable(explicitToJson: true)
class NewExamProductList {
  /*
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
   */
  final String? name;
  final String? image;
  final String? id;
  @JsonKey(name: "cheapest_price")
  final int? cheapestPrice;
  NewExamProductList(this.name, this.image, this.id, this.cheapestPrice);
  factory NewExamProductList.fromJson(Map<String, dynamic> json) => _$NewExamProductListFromJson(json);
  Map<String, dynamic> toJson() => _$NewExamProductListToJson(this);
}