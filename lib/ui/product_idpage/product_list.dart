
import 'package:get/get.dart';
import 'package:udevs_mac_bro/model/product_model/product_model.dart';

import 'package:udevs_mac_bro/ui/product_idpage/product_idpage_logic.dart';

final logic = Get.put(ProductIdpageLogic());
allProductList(index){
  final RxList<Properties> product = logic.allProductList;

  List<dynamic> allProductWidget = [];
  allProductWidget.add(product.elementAt(index).value!.elementAt(index).value);

  return allProductWidget.elementAt(index);
}