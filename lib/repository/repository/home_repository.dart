import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:udevs_mac_bro/base/base_repository.dart';
import 'package:udevs_mac_bro/model/banner_model/banners_model.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';
import 'package:udevs_mac_bro/repository/repository/server_error.dart';
import 'package:udevs_mac_bro/repository/response_handler.dart';


class HomeRepostry extends BaseRepository{
  RestClient? apiClient;
  Future<ResponseHandler<BannersModel>> _fetchBanners() async {
    BannersModel response;
    try {
      response = await apiClient!.getBanner();
    } catch (error, stacktrace) {
      debugPrint("Exception occurred: $error stacktrace: $stacktrace");
      return ResponseHandler()
        ..setException(ServerError.withError(error: error as DioError));
    }
    return ResponseHandler()..data = response;
  }

  Future<dynamic> getBanners() async {
    final response =
    await _fetchBanners();
    if (response.data != null) {
      return response.data;
    } else if (response.getException()?.getErrorMessage() != "Canceled") {
      return await getErrorMessage(
        response.getException()?.getErrorMessage() ?? '',
      );
    }
  }
}