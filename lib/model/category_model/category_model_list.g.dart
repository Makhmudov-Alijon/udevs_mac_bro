// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModelList _$CategoryModelListFromJson(Map<String, dynamic> json) =>
    CategoryModelList(
      (json['categories'] as List<dynamic>)
          .map((e) => CategoryModelItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['count'] as String,
    );

Map<String, dynamic> _$CategoryModelListToJson(CategoryModelList instance) =>
    <String, dynamic>{
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'count': instance.count,
    };
