import 'package:get/get.dart';
import 'package:udevs_mac_bro/ui/login_page/login_page.dart';
import 'package:udevs_mac_bro/ui/login_page/otp_login_page.dart';
import 'package:udevs_mac_bro/ui/main/main/main_exam.dart';
import 'package:udevs_mac_bro/ui/main/home/category_child_allitem/category_child_allitem_view.dart';
import 'package:udevs_mac_bro/ui/main/home/category_child_item/category_child_item_view.dart';
import 'package:udevs_mac_bro/ui/main/home/category_page/category_item_page.dart';
import '../ui/splash/splash_page.dart';
import 'app_routes.dart';


class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const SplashPage(),

    ),
    GetPage(
      name: AppRoutes.mainPageScreen,
      page: () =>  MainPageScreen(),

    ),
    GetPage(
      name: AppRoutes.internetConnection,
      page: () =>  const LoginPage(),
    ),
    GetPage(
      name: AppRoutes.detail,
      page: () =>  const OtpLoginPage(),

    ),
    GetPage(
      name: AppRoutes.subCategory,
      page: () =>  SubCategoryItem(),

    ),
    GetPage(
      name: AppRoutes.categoryChild,
      page: () =>  Category_child_itemPage(),

    ),
    GetPage(
      name: AppRoutes.categoryAllChild,
      page: () =>  Category_child_allitemPage(),

    ),
  ];
}
