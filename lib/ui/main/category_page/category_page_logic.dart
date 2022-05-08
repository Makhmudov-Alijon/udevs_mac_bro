import 'package:get/get.dart';
import 'package:udevs_mac_bro/controller/home_controller.dart';

import 'package:udevs_mac_bro/model/category_model/ExamCategoryModel2.dart';
import 'package:udevs_mac_bro/model/category_model/categoris_model.dart';
import 'package:udevs_mac_bro/model/category_model/category_model_list.dart';

import '../../../repository/api_repository/api_repository.dart';

class Category_pageLogic extends GetxController {
  HomeController _controller=Get.put(HomeController());
  RxBool loading = RxBool(false);
  final RestClient restClient = Get.find();
  RxList<Categories> category = RxList();
  RxList <Children> children=RxList();
  @override
  void onReady() async {
    super.onReady();
    int index=1;
    loading(true);
    ExamCategoryModel2 listModel = await restClient.getCategory();
    loading(false);
    category(listModel.categories);
    children(listModel.categories!.elementAt(index).children);

  }
}
