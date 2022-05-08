import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';


import 'package:get/get.dart';


import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:udevs_mac_bro/controller/home_controller.dart';
import 'package:udevs_mac_bro/ui/main/banner_page/banner_list.dart';
import 'package:udevs_mac_bro/ui/main/category_page/category_list.dart';
import 'package:udevs_mac_bro/ui/main/new__product/new_product_list.dart';


class HomePage extends StatelessWidget {

  HomeController controller = Get.put(HomeController());
  var pageIndex = 0.obs;
  TextEditingController _editingController = TextEditingController();
  RxInt _current = 0.obs;
  final CarouselController _controller = CarouselController();
  final List<Widget> itemBanner = allBannerList();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: HexColor('#E5E5E5'),
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                height: 6.h,
                width: 80.w,
                margin: EdgeInsets.only(


                    right: 3.w

                ),
                child: TextField(
                  controller: _editingController,

                  decoration: InputDecoration(
                      filled: true,
                      fillColor: HexColor('#E5E5E5'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(Icons.search),
                    hintText: 'Поиск'
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(


                  ),
                  child: Icon(
                    Icons.notifications_none_rounded, color: Colors.grey,size: 4.h,)
              )
            ],
          ),
          toolbarHeight: 8.h,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView(

          children: [

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 2.h,

                  ),
                  child: Column(

                    children: [
                      CarouselSlider(
                        carouselController: _controller,
                        items: itemBanner,
                        options: CarouselOptions(
                          height: 25.h,
                          enlargeCenterPage: true,
                          pageSnapping: true,
                          autoPlay: true,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: const Duration(
                              milliseconds: 300),
                          viewportFraction: 0.9, // onScrolled: (index) {
                            onPageChanged: (index, reason) {
                              _current.value = index;
                            }

                        ),
                      ),
                      Obx(() {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: itemBanner
                              .asMap()
                              .entries
                              .map((entry) {
                            return GestureDetector(
                              onTap: () =>
                                  _controller.animateToPage(entry.key),
                              child: Container(
                                width:_current.value == entry.key ? 3.w :2.w,
                                height:_current.value == entry.key ? 3.h :2.h,
                                margin: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: (Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black)
                                        .withOpacity(
                                        _current.value == entry.key
                                            ? 0.9
                                            : 0.1)),
                              ),
                            );
                          }).toList(),
                        );
                      }),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(

                          left: 5.w
                      ),
                      child: Text('Новые', style: TextStyle(fontSize: 20),),
                    ),
                    Container(
                      margin: EdgeInsets.only(

                          left: 68.w
                      ),
                      child: Icon(Icons.arrow_forward),
                    )
                  ],
                ),
                SizedBox(height: 2.h,),
                Obx(() {
                  return Container(

                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: allNewProductList(),
                      ),
                    ),
                  );
                }),
                Container(
                  margin: EdgeInsets.only(
                      // top: 2.h,
                      left: 5.w
                  ),
                  child: Text('Категории', style: TextStyle(fontSize: 20),),
                ),

                StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: allCategoryList(),
                ),

              ],
            ),


          ],

        ),
      );
    });
  }
}

