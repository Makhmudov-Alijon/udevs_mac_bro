import 'package:json_annotation/json_annotation.dart';
import 'package:udevs_mac_bro/model/new_exam/new_product_list.dart';

part 'new_exam_map.g.dart';

@JsonSerializable(explicitToJson: true)
class NewExamMap {
  @JsonKey(name: "featured_list")
  final FeaturedList? featuredList;
  NewExamMap(this.featuredList);

  factory NewExamMap.fromJson(Map<String, dynamic> json) => _$NewExamMapFromJson(json);

  Map<String, dynamic> toJson() => _$NewExamMapToJson(this);
}