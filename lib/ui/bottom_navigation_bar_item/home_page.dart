import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';



import 'package:get/get.dart';


import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sizer/sizer.dart';
import 'package:udevs_mac_bro/controller/home_controller.dart';
import 'package:udevs_mac_bro/ui/main/banner_page/banner_list.dart';
import 'package:udevs_mac_bro/ui/main/category_page/category_list.dart';
import 'package:udevs_mac_bro/ui/main/new__product/new_product_list.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  List<String> a = [
    "images/imagecarousel.png",
  ];
  HomeController _controller=Get.put(HomeController());
  int index=0;
  @override
  Widget build(BuildContext context) {

    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(
                child: Container(
                  height: 5.h,
                  margin: EdgeInsets.only(


                      right: 3.w

                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(


                ),
                child:Icon(Icons.notifications_none_rounded,color: Colors.grey,)
              )
            ],
          ),
          toolbarHeight: 7.h,
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
                        items: allBannerList(),
                        options: CarouselOptions(
                          height: 20.h ,
                          enlargeCenterPage: true,
                          pageSnapping: true,
                          autoPlay: true,
                          // aspectRatio: 16 / 9,

                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: const Duration(
                              milliseconds: 800),
                          viewportFraction: 0.9,
                          onScrolled: (index) {
                            setState(() {
                              pageIndex = index as int;
                            });
                          },

                        ),
                      ),
                      // CarouselIndicator(
                      //   activeColor: Colors.black,
                      //   count: bannerlist.allProductList(),
                      //   index: pageIndex,
                      //   color: Colors.red,
                      // ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 2.5.h,
                          left:5.w
                      ),
                      child: Text('Новые', style: TextStyle(fontSize: 20),),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 2.5.h,
                          left:68.w
                      ),
                      child: Icon(Icons.arrow_forward),
                    )
                  ],
                ),
                SizedBox(height: 2.h,),
                Container(

                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: allNewProductList(),
                    ),
                  ),
                ),


                Container(
                  margin: EdgeInsets.only(
                      top: 2.5.h,
                      left:5.w
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
