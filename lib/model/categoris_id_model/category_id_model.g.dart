// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryIdModel _$CategoryIdModelFromJson(Map<String, dynamic> json) =>
    CategoryIdModel(
      json['active'] as bool?,
      json['description'] as String?,
      json['id'] as String?,
      json['image'] as String?,
      json['name'] as String?,
      json['slug'] as String?,
    );

Map<String, dynamic> _$CategoryIdModelToJson(CategoryIdModel instance) =>
    <String, dynamic>{
      'active': instance.active,
      'description': instance.description,
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'slug': instance.slug,
    };
