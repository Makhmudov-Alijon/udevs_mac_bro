import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:udevs_mac_bro/no_connection/no_connection_view.dart';
import 'package:udevs_mac_bro/routes/app_routes.dart';




class ConnectionService extends GetxService {
  StreamSubscription<ConnectivityResult>? subscription;

  final _connectivity = Connectivity();


  @override
  void onClose() {
    subscription?.cancel();
  }

  @override
  void onReady() {
    subscription =
        _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      switch (result) {
        case ConnectivityResult.wifi:
        case ConnectivityResult.ethernet:
        case ConnectivityResult.mobile:
        case ConnectivityResult.bluetooth:
          if (Get.currentRoute == AppRoutes.initial) {
            Get.offAllNamed(AppRoutes.initial);
          }else{
            Get.back();
          }
          print("Connection ..........");
          break;
        case ConnectivityResult.none:
          Get.toNamed(NoConnectionPage.route);
          break;
      }
    });
  }
}
