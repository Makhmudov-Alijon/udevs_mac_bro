// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_exam_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewExamMap _$NewExamMapFromJson(Map<String, dynamic> json) => NewExamMap(
      json['featured_list'] == null
          ? null
          : FeaturedList.fromJson(
              json['featured_list'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NewExamMapToJson(NewExamMap instance) =>
    <String, dynamic>{
      'featured_list': instance.featuredList?.toJson(),
    };
