import 'dart:async';



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udevs_mac_bro/ui/main/main/main_exam.dart';




class SplashController extends GetxController{
  time(context){

    Timer(const Duration(seconds: 1), () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage())));
  update();
  }

}
