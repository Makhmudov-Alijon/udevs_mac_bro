// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoris_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModelItem _$CategoryModelItemFromJson(Map<String, dynamic> json) =>
    CategoryModelItem(
      json['active'] as bool?,
      json['description'] as String?,
      json['id'] as String?,
      json['image'] as String?,
      json['name'] as String?,
      json['order'] as String?,
      json['slug'] as String?,
      json['wide'] as bool?,
    );

Map<String, dynamic> _$CategoryModelItemToJson(CategoryModelItem instance) =>
    <String, dynamic>{
      'active': instance.active,
      'description': instance.description,
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'order': instance.order,
      'slug': instance.slug,
      'wide': instance.wide,
    };
