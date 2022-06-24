/*
 * Created by Makhmudov Bekhruz
 */

import 'package:udevs_mac_bro/contact/contact.dart';

abstract class Assets {
  static String icon(String iconName, {String? format}) =>
      "assets/images/icons/$iconName" + (format ?? ".svg");

  static String image(String imageName, {String? format}) =>
      "assets/images/banners/$imageName" + (format ?? ".svg");

  static String banner(String imageName, {String? format}) =>
      image("banners/$imageName", format: format);

  static String rive(String riveAnimName) => "assets/anim/$riveAnimName.riv";

  static String network(int id) => AppConstants.baseUrl + "/file/$id";
}
