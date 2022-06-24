
import 'package:udevs_mac_bro/controller/login_page_controller.dart';
import 'package:get/get.dart';

LoginController controller = Get.put(LoginController());

class AppConstants {
  AppConstants._();

  // static const baseUrl = 'https://test.customer.api.delever.uz/v1/'; //test

  static const String baseUrl = 'https://api.client.macbro.uz';
  static const String banners = '/v1/banner';
  static const String category = '/v1/category';
  static const String featuredList = '/v1/featured-list/rasprodazha?lang=ru';
  static const String categoryID = '/v1/product?category={id}';
  static const String variantCategoryID =
      '/v1/product-variant?category={id}&limit=1000';
  static const String productID = '/v1/product/{id}';
  static const String userExists = '/v1/user/exists';
  static const String passcodeGenerate = '/v1/auth/passcode/generate';
  static const String passcodeConfirm = '/v1/auth/passcode/confirm';
  static const String userMe = '/v1/user/me';
  static const String userID = '/v1/user/{id}';
  static const String productSearch = '/v1/product';
}
