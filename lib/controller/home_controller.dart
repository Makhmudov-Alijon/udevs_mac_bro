import 'dart:convert';

import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udevs_mac_bro/model/favorite_model/favorite_model.dart';

class HomeController extends GetxController{
  final Box productBox = Hive.box('product');
  var d=0.obs;
  var a=0.obs;
  var id=0.obs;
  var isFavorite = false.obs;
  List selectedTasks = [];
  RxBool loading=RxBool(false);
  addTask(String? id,String? image,String? title,) {
    // var randomId = getRandomString(200);
    var product=FavoriteModel(id, image,title);
    productBox.add(jsonEncode(product.toJson()));
    // productBox.putAt(int.parse(randomId), jsonEncode(product.toJson()));

    update();
  }

  deleteTask(int index) {
    productBox.deleteAt(index);
    update();
  }


}