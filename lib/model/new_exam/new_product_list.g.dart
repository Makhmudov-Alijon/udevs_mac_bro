// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_product_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeaturedList _$FeaturedListFromJson(Map<String, dynamic> json) => FeaturedList(
      json['active'] as bool?,
      (json['products'] as List<dynamic>)
          .map((e) => NewExamProductList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeaturedListToJson(FeaturedList instance) =>
    <String, dynamic>{
      'active': instance.active,
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
