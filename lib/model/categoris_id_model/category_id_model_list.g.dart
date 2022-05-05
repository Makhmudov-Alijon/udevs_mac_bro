// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_id_model_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryIdModelList _$CategoryIdModelListFromJson(Map<String, dynamic> json) =>
    CategoryIdModelList(
      (json['children'] as List<dynamic>?)
          ?.map((e) => CategoryIdModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['active'] as bool?,
    );

Map<String, dynamic> _$CategoryIdModelListToJson(
        CategoryIdModelList instance) =>
    <String, dynamic>{
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'active': instance.active,
    };
