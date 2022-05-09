import 'package:get/get.dart';
import 'package:udevs_mac_bro/controller/home_controller.dart';

import 'package:udevs_mac_bro/model/category_model/ExamCategoryModel2.dart';
import 'package:udevs_mac_bro/model/category_model/categoris_model.dart';
import 'package:udevs_mac_bro/model/category_model/category_model_list.dart';

import '../../../repository/api_repository/api_repository.dart';

class Category_pageLogic extends GetxController {

  RxBool loading = RxBool(false);
  final RestClient restClient = Get.find();
  RxList<Categories> category = RxList();

  @override
  void onReady() async {
    super.onReady();

    loading(true);
    ExamCategoryModel2 listModel = await restClient.getCategory();
    loading(false);
    category(listModel.categories);


  }
}
