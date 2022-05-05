// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => BannerModel(
      json['id'] as String?,
      json['title'] as String?,
      json['active'] as bool?,
      json['image'] as String?,
      json['description'] as String?,
      json['lang'] as String?,
      json['button_title'] as String?,
      json['price'] as int?,
    );

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'active': instance.active,
      'image': instance.image,
      'description': instance.description,
      'lang': instance.lang,
      'button_title': instance.buttonTitle,
      'price': instance.price,
    };
