import 'package:alice/alice.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';


class AliceConfig extends GetxController{
  late final Alice alice;
  late final Dio dio;

  AliceConfig(this.alice, this.dio) {
    dio.interceptors.add(alice.getDioInterceptor());
  }


}