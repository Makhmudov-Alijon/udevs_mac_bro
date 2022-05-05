import 'package:json_annotation/json_annotation.dart';

import 'banner_model.dart';

part 'banners_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BannersModel {
  /*
  "count": "9",
banners
   */
final List<BannerModel> banners;
final String count;
  BannersModel(this.banners, this.count);

  factory BannersModel.fromJson(Map<String, dynamic> json) => _$BannersModelFromJson(json);

  Map<String, dynamic> toJson() => _$BannersModelToJson(this);
}