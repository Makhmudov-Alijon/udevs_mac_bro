

import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:udevs_mac_bro/model/category_model/category_child_item.dart';
import 'package:udevs_mac_bro/model/category_model/category_chils.dart';

import 'package:udevs_mac_bro/model/category_model/ExamCategoryModel2.dart';

import 'package:udevs_mac_bro/model/new_exam/new_exam_map.dart';

import 'package:udevs_mac_bro/model/product_model/product_model.dart';





import '../../model/banner_model/banners_model.dart';






part 'api_repository.g.dart';

@RestApi(baseUrl: "https://api.client.macbro.uz")
abstract class RestClient {


  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;


  @GET('/v1/banner')
  Future<BannersModel> getBanner();

  @GET('/v1/category')
  Future<ExamCategoryModel2> getCategory();

  @GET('/v1/featured-list/rasprodazha?lang=ru')
  Future<NewExamMap> getNewProduct(
      @Query("lang") String lang,
      );
  @GET('/v1/product?category={id}')
  Future<CategoryChildItem> getCategoryChildItem(
      @Path("id") String id
      );
  @GET('/v1/product-variant?category={id}&limit=1000')
  Future<CategoryChils> getCategoryChildAllItem(
      @Path("id") String id,
      );
  @GET('/v1/product/{id}')
  Future<ProductModel> getProductId(
      @Path("id") String id,
      );
}
