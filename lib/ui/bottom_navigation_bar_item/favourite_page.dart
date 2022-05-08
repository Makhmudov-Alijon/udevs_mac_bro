import 'dart:convert';

import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:sizer/sizer.dart';
import 'package:udevs_mac_bro/controller/home_controller.dart';
import 'package:udevs_mac_bro/model/favorite_model/favorite_model.dart';


import '../../core/card_widget/favorite_card_vidget.dart';
import '../../core/card_widget/new_card_widget.dart';

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
              Container(
                margin: EdgeInsets.only(
                    top: 5.h
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: _controller.productBox.length,
                  itemBuilder: (context, index) {
                    var model = _controller.productBox.getAt(index);
                    var taskMap = jsonDecode(model);
                    _controller.taskModel = FavoriteModel.fromJson(taskMap);
                    _controller.d.value=index;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 10
                          ),
                          height: 20.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.w),
                            color: Colors.white,
                          ),
                          child: Stack(
                            children: [

                              Container(
                                margin: EdgeInsets.only(
                                    top: 3.h
                                ),
                                height: 15.h,
                                width: 50.w,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.w),
                                  child: Container(
                                    margin: EdgeInsets.only(

                                    ),
                                    child:FancyShimmerImage(
                                        imageUrl: _controller.taskModel.image.toString(),
                                        boxFit: BoxFit.fitHeight,
                                        errorWidget:Container(

                                          child: Image(
                                            image: AssetImage("images/Vectomacr.png"),
                                          ),
                                        )
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 26.w
                                  ),
                                  child: IconButton(
                                    icon:  Icon(Icons.favorite,color: Colors.blue,size: 3.h,),
                                    onPressed: () {
                                      _controller.deleteTask(index);


                                      // _controller.isFavorite.value=false;
                                    },
                                  )
                              ),

                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 10
                          ),
                          child: Text(_controller.taskModel.title.toString()),
                        ),
                        // Container(
                        //   margin: EdgeInsets.only(
                        //       left: 10
                        //   ),
                        //   child: Text(taskModel..toString(),style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                        // ),
                      ],
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      );
    });
  }
}

