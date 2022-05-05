// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_product_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewExamProductList _$NewExamProductListFromJson(Map<String, dynamic> json) =>
    NewExamProductList(
      json['name'] as String?,
      json['image'] as String?,
      json['id'] as String?,
      json['cheapest_price'] as int?,
    );

Map<String, dynamic> _$NewExamProductListToJson(NewExamProductList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'id': instance.id,
      'cheapest_price': instance.cheapestPrice,
    };
