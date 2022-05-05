import 'package:json_annotation/json_annotation.dart';

part 'favorite_model.g.dart';

@JsonSerializable(explicitToJson: true)
class FavoriteModel {
  final String? id;
  final String? image;
  final String? title;


  FavoriteModel(this.id, this.image, this.title);

  factory FavoriteModel.fromJson(Map<String, dynamic> json) => _$FavoriteModelFromJson(json);

  Map<String, dynamic> toJson() => _$FavoriteModelToJson(this);
}