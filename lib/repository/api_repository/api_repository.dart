

import 'package:alice/alice.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:udevs_mac_bro/contact/contact.dart';
import 'package:udevs_mac_bro/controller/login_page_controller.dart';
import 'package:udevs_mac_bro/model/category_model/category_child_item.dart';
import 'package:udevs_mac_bro/model/category_model/category_chils.dart';

import 'package:udevs_mac_bro/model/category_model/ExamCategoryModel2.dart';

import 'package:udevs_mac_bro/model/new_exam/new_exam_map.dart';

import 'package:udevs_mac_bro/model/product_model/product_model.dart';
import 'package:udevs_mac_bro/model/user_create/UserCreate.dart';
import 'package:udevs_mac_bro/model/user_create/UserCreateBody.dart';
import 'package:udevs_mac_bro/model/user_create/UserCreatePasscodeBody.dart';
import 'package:udevs_mac_bro/model/user_create/UserCreateToken.dart';
import 'package:udevs_mac_bro/model/user_create/UserCreateTokenBody.dart';
import 'package:udevs_mac_bro/model/user_create/UserCreatrePasscode.dart';
import 'package:udevs_mac_bro/model/user_create/UserMe.dart';





import '../../model/banner_model/banners_model.dart';





import 'package:get/get.dart';
part 'api_repository.g.dart';
LoginController controller=Get.put(LoginController());

@RestApi(baseUrl: "")
abstract class RestClient {
  static Alice alice = Alice(
    navigatorKey: AppConstants.navigatorKey,
    showNotification: true,
    showInspectorOnShake: false,
    darkTheme: false,
  );

  static get getDio {
    Dio dio = Dio(BaseOptions(followRedirects: false));

    if (kDebugMode) {
      /// chuck interceptor
      dio.interceptors.add(alice.getDioInterceptor());

      /// log
      dio.interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestBody: true,
          request: true,
        ),
      );
    }

    /// Tries the last error request again.
    // dio.interceptors.add(
    //   RetryInterceptor(
    //     dio: dio,
    //     toNoInternetPageNavigator: () async =>
    //     await Get.toNamed(AppRoutes.internetConnection),
    //     accessTokenGetter: () => LocalSource.instance.getAccessToken(),
    //     refreshTokenFunction: BaseFunctions.refreshToken,
    //   ),
    // );

    return dio;
  }



  static RestClient? _apiClient;

  static RestClient getInstance({String baseUrl = ''}) {
    if (_apiClient != null) {
      return _apiClient!;
    } else {
      _apiClient = RestClient(getDio, baseUrl);
      return _apiClient!;
    }
  }

  static void removeApiClient() {
    _apiClient = null;
  }

  // factory RestClient(Dio dio, String baseUrl,) = _RestClient;

  factory RestClient(Dio dio,  String baseUrl) {
    dio.options = BaseOptions(receiveTimeout: 30000, connectTimeout: 30000);
    return _RestClient(dio, baseUrl: baseUrl);
  }
  @GET('https://api.client.macbro.uz/v1/banner')
  Future<BannersModel> getBanner();

  @GET('https://api.client.macbro.uz/v1/category')
  Future<ExamCategoryModel2> getCategory();

  @GET('https://api.client.macbro.uz/v1/featured-list/rasprodazha?lang=ru')
  Future<NewExamMap> getNewProduct(
      @Query("lang") String lang,
      );
  @GET('https://api.client.macbro.uz/v1/product?category={id}')
  Future<CategoryChildItem> getCategoryChildItem(
      @Path("id") String id
      );
  @GET('https://api.client.macbro.uz/v1/product-variant?category={id}&limit=1000')
  Future<CategoryChils> getCategoryChildAllItem(
      @Path("id") String id,
      );
  @GET('https://api.client.macbro.uz/v1/product/{id}')
  Future<ProductModel> getProductId(
      @Path("id") String id,
      );
  @POST('https://api.client.macbro.uz/v1/user/exists')
  Future<UserCreate> userCreate(
      @Body() UserCreateBody userCreateBody
      );
  @POST('https://api.auth.macbro.uz/v1/auth/passcode/generate')
  Future<UserCreateToken> userCreateToken(
      @Body() UserCreateTokenBody userCreateBody,
      @Header("platform-id") String platformId,
      );
  @POST('https://api.auth.macbro.uz/v1/auth/passcode/confirm')
  Future<UserCreatrePasscode> userCreatePasscode(
      @Body() UserCreatePasscodeBody userCreateBody,
      @Header("platform-id") String platformId,
      );
  @GET('https://api.client.macbro.uz/v1/user/me')
  Future<UserMe> getUserMe(
      @Header("Authorization") String authorization,
      @Header("platform-id") String platformId,
      );
  @GET('https://api.client.macbro.uz/v1/user/{id}')
  Future<UserMe> getUser(
      @Path("id") String id,
      @Header("platform-id") String platformId,
      );
}
