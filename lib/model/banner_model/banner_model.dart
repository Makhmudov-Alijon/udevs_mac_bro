import 'package:json_annotation/json_annotation.dart';

part 'banner_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BannerModel {
/*
            "id": "62232c7567fb8e00122e4dd2",
            "title": "BroService",
            "slug": "podderzhannye-gadzhety-p31gdil0dn3p34",
            "active": true,
            "image": "https://cdn.macbro.uz/macbro/62ab461a-037f-4456-9589-1be6a3a238ac",
            "url": "bro-service",
            "description": "<p><span style=\"font-size: 18pt;\"><strong>Простые решения для сложных проблем</strong></span></p>",
            "lang": "ru",
            "price": 0,
            "button_title": "Перейти",
 */
final String? id;
final String? title;
final bool? active;
final String? image;
final String? description;
final String? lang;
@JsonKey(name:"button_title" )
final String? buttonTitle;
final int? price;
  BannerModel(this.id, this.title, this.active, this.image, this.description, this.lang, this.buttonTitle, this.price);

  factory BannerModel.fromJson(Map<String, dynamic> json) => _$BannerModelFromJson(json);

  Map<String, dynamic> toJson() => _$BannerModelToJson(this);
}