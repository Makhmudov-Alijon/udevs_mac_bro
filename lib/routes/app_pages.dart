import 'package:get/get.dart';
import 'package:udevs_mac_bro/no_connection/no_connection_binding.dart';
import 'package:udevs_mac_bro/no_connection/no_connection_view.dart';
import 'package:udevs_mac_bro/pages/main/home/category_child_allitem/category_child_allitem_binding.dart';
import 'package:udevs_mac_bro/pages/main/home/category_child_item/category_child_item_binding.dart';
import 'package:udevs_mac_bro/pages/main/home/category_page/category_page_binding.dart';
import 'package:udevs_mac_bro/pages/main/home/product_detail_page/product_detail_page_binding.dart';
import 'package:udevs_mac_bro/pages/main/home/product_detail_page/product_detail_page_view.dart';

import '../pages/main/home/category_child_allitem/category_child_allitem_view.dart';
import '../pages/main/home/category_child_item/category_child_item_view.dart';
import '../pages/main/home/category_page/category_item_page.dart';
import '../pages/main/home/search/search_binding.dart';
import '../pages/main/home/search/search_view.dart';
import '../pages/main/main/main_exam.dart';
import '../pages/splash/splash_page.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: SplashPage.route,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: MainPageScreen.route,
      page: () => MainPageScreen(),
    ),
    GetPage(
        name: SubCategoryItem.route,
        page: () => SubCategoryItem(),
        binding: Category_pageBinding()),
    GetPage(
        name: Category_child_itemPage.route,
        page: () => Category_child_itemPage(),
        binding: Category_child_itemBinding()),
    GetPage(
        name: Category_child_allitemPage.route,
        page: () => Category_child_allitemPage(),
        binding: Category_child_allitemBinding()),
    GetPage(
        name: NoConnectionPage.route,
        page: () => NoConnectionPage(),
        binding: NoConnectionBinding()),
    GetPage(
        name: SearchPage.route,
        page: () => SearchPage(),
        binding: SearchBinding()),
    GetPage(
        name: ProductIdpagePage.route,
        page: () => ProductIdpagePage(),
        binding: ProductIdpageBinding())
  ];
}
