import 'package:get/get.dart';


import 'package:udevs_mac_bro/model/category_model/ExamCategoryModel2.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';



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
