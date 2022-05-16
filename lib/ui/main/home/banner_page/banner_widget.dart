import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:udevs_mac_bro/controller/exam_home_controller.dart';
import 'package:udevs_mac_bro/model/banner_model/banner_model.dart';
import 'banner_item.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetBuilder<ExamHomeController>(
      init: ExamHomeController(),
      builder: (controller) =>  Container(
          height: 200,
          color: Colors.red,
          margin: const EdgeInsets.only(left: 12, top: 12),
          child:Row(
            children: [
              for(int i=0;i<controller.banners.length;i++)...{

                   BannerItem(allModel: controller.banners[i])
              }
            ],
          )
        ),

    );
  }
}
