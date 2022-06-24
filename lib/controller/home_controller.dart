

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udevs_mac_bro/model/favorite_model/favorite_model.dart';


class HomeController extends GetxController{
  final Box productBox = Hive.box('product');
  late FavoriteModel taskModel;

  var color=Colors.grey.obs;
  var d=0.obs;
  var a=0.obs;
  var b=0.obs;
  var sezrch=''.obs;
  var id=''.obs;
  var idd;
  var isFavorite = false.obs;
  var favorite=false.obs;
  List selectedTasks = [];
  RxBool loading=RxBool(false);
  addTask(String? id,String? image,String? title,) {


    // productBox.add(jsonEncode(product.toJson()));


    update();
  }

  deleteTask(int index) {
    productBox.deleteAt(index);
    update();
  }
  clearFavorite(){
    productBox.clear();
  }


}