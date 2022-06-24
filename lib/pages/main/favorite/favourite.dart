


import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'package:udevs_mac_bro/controller/home_controller.dart';





class FavouritePage extends StatelessWidget {
   FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (_controller) {
      return Scaffold(
        appBar:  AppBar(
          title: Text('Избранные',style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [


            ],
          ),
        ),
      );
    });
  }
}

