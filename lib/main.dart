import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udevs_mac_bro/routes/app_pages.dart';
import 'package:udevs_mac_bro/routes/app_routes.dart';

import 'package:sizer/sizer.dart';
import 'package:udevs_mac_bro/ui/exam.dart';

import 'initial_binding.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox('product');
  runApp(const MyApp());
}  

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  return Sizer(
        builder: (context, orientation, deviceType) {
          return GetMaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(

              primarySwatch: Colors.blue,

            ),
            initialRoute: AppRoutes.main,
            initialBinding: InitialBinding(),
            getPages: AppPages.pages,
            // home: ListTest(),
          );
        }
    );
  }
}
