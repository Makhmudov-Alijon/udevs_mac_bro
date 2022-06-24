
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import 'no_connection_logic.dart';

class NoConnectionPage extends StatelessWidget {
  static const String route = "/no-connection";

  final logic = Get.find<NoConnectionLogic>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:()async{

        return  await false;
      },
      child: Scaffold(
        body: Column(

          children: [
            SizedBox(height: 200,),

            Text(
              'no-connection',

            ),

          ],
        ),
      ),
    );
  }
}
