// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_id_model_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryIdModelMap _$CategoryIdModelMapFromJson(Map<String, dynamic> json) =>
    CategoryIdModelMap(
      json['category'] == null
          ? null
          : CategoryIdModelList.fromJson(
              json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryIdModelMapToJson(CategoryIdModelMap instance) =>
    <String, dynamic>{
      'category': instance.category?.toJson(),
    };
