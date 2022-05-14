import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udevs_mac_bro/config/alice_config.dart';
import 'package:udevs_mac_bro/routes/app_pages.dart';
import 'package:udevs_mac_bro/routes/app_routes.dart';
import 'package:alice/alice.dart';
import 'package:sizer/sizer.dart';


import 'binding/initial_binding.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox('product');
  runApp( MyApp());
}  

class MyApp extends StatelessWidget {
   // MyApp({Key? key}) : super(key: key);
   late Alice alice=Alice(showNotification: true);
   late Dio dio;
   late AliceConfig apiService;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  return Sizer(
        builder: (context, orientation, deviceType) {
          return GetMaterialApp(
            navigatorKey: AppRoutes.navigatorKey,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            initialRoute: AppRoutes.initial,
            initialBinding: InitialBinding(),
            getPages: AppPages.pages,
            // home: ListTest(),
          );
        }
    );
  }
}
