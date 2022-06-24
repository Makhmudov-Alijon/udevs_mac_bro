

import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:udevs_mac_bro/contact/contact.dart';

import 'package:udevs_mac_bro/model/SearchModel.dart';
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



part 'api_repository.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET(AppConstants.banners)
  Future<BannersModel> getBanner();

  @GET(AppConstants.category)
  Future<ExamCategoryModel2> getCategory();

  @GET(AppConstants.featuredList)
  Future<NewExamMap> getNewProduct(
    @Query("lang") String lang,
  );

  @GET(AppConstants.categoryID)
  Future<CategoryChildItem> getCategoryChildItem(@Path("id") String id);

  @GET(AppConstants.variantCategoryID)
  Future<CategoryChils> getCategoryChildAllItem(
    @Path("id") String id,
  );

  @GET(AppConstants.productID)
  Future<ProductModel> getProductId(
    @Path("id") String id,
  );

  @POST(AppConstants.userExists)
  Future<UserCreate> userCreate(@Body() UserCreateBody userCreateBody);

  @POST(AppConstants.passcodeGenerate)
  Future<UserCreateToken> userCreateToken(
    @Body() UserCreateTokenBody userCreateBody,
    @Header("platform-id") String platformId,
  );

  @POST(AppConstants.passcodeConfirm)
  Future<UserCreatrePasscode> userCreatePasscode(
    @Body() UserCreatePasscodeBody userCreateBody,
    @Header("platform-id") String platformId,
  );

  @GET(AppConstants.userMe)
  Future<UserMe> getUserMe(
    @Header("Authorization") String authorization,
    @Header("platform-id") String platformId,
  );

  @GET(AppConstants.userID)
  Future<UserMe> getUser(
    @Path("id") String id,
    @Header("platform-id") String platformId,
  );

  @GET(AppConstants.productSearch)
  Future<SearchModel> getSearch(
    @Query("search") String search,
  );
}
