import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udevs_mac_bro/controller/splash_controller.dart';
import 'package:udevs_mac_bro/ui/bottom_navigation_bar_item/main_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {



SplashController _controller=Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return GetBuilder<SplashController>(builder: (_controller) {
      _controller.time(context);
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image(
                width: width * .3,
                image: AssetImage('images/Vectomacr.png'),
              ),
            ),
            // Center(
            //   child: Text('For Clients',
            //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            // ),

          ],
        ),

      );
    });
  }

}
