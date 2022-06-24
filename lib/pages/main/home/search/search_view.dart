import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:udevs_mac_bro/model/SearchModel.dart';
import 'package:udevs_mac_bro/pages/main/home/search/search_item.dart';


import 'search_logic.dart';

class SearchPage extends StatelessWidget {
  final logic = Get.find<SearchLogic>();
  // final logic = Get.put(SearchLogic());
  static const String route = '/search';
  TextEditingController searchcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return logic.loading.value ? Center(child: CircularProgressIndicator(),) : Scaffold(
        appBar: AppBar(
          title: Text('Search'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              for(int i = 0; i < logic.allProductList.length; i++)...{
               SearchItem(allmodel: logic.allProductList.elementAt(i))
              }
            ],
          ),
        ),
      );
    });
  }
}
