import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            AppBar(
              title: Text('Корзина',style: TextStyle(color: Colors.black),),
              centerTitle: true,
              backgroundColor: Colors.white,
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 2.h,
                  left: 5.w
              ),
              height: 20.h,
              width: 90.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: 2.h,
                        left: 5.w
                    ),
                    child: Image(
                      width: 20.w,
                      image: AssetImage('images/imagecarousel.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Container(
                          margin: EdgeInsets.only(
                              top: 2.h,
                              left: 5.w
                          ),
                          child: Text("13-inch MacBook Air -\n Space Gray",style: TextStyle(fontSize: 15),)),
                      Container(
                          margin: EdgeInsets.only(
                              top: 2.h,
                              left: 5.w
                          ),
                          child: Text("12 999 999 сум",style: TextStyle(color: Colors.blue),)),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 2.h,
                                left: 5.w
                            ),
                            height: 4.h,
                            width: 8.w,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(child: Text('-')),
                          ),
                          Container(
                              margin: EdgeInsets.only(
                                  top: 2.h,
                                  left: 5.w
                              ),
                              child: Text("1")),
                          Container(
                            margin: EdgeInsets.only(
                                top: 2.h,
                                left: 5.w
                            ),
                            height: 4.h,
                            width: 8.w,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(child: Text('+')),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 2.h,
                        left: 5.w
                    ),
                    child: Icon(Icons.delete_outline,color: Colors.grey,size: 30,),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 2.h,
                  left: 5.w
              ),
              height: 20.h,
              width: 9.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(
                              top: 2.h,
                              left: 2.w
                          ),
                          child: Text("Сумма",style: TextStyle(fontSize: 20),)),
                      Container(
                          margin: EdgeInsets.only(
                              top: 2.h,
                              left: 30.w
                          ),
                          child: Text('26 599 999 сум',style: TextStyle(fontSize: 20))
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(
                              top: 1.h,
                              left: 2.w
                          ),
                          child: Text("Скидка",style: TextStyle(fontSize: 20),)),
                      Container(
                          margin: EdgeInsets.only(
                              top: 1.h,
                              left: 5.w
                          ),
                          child: Text('-7,5%',style: TextStyle(fontSize: 20))
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(
                              top: 1.h,
                              left: 2.w
                          ),
                          child: Text("Сумма доставки",style: TextStyle(fontSize: 15),)),
                      Container(
                          margin: EdgeInsets.only(
                              top: 1.h,
                              left: 30.w
                          ),
                          child: Text('Бесплатно',style: TextStyle(fontSize: 20))
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(
                              top: 1.h,
                              left: 2.w
                          ),
                          child: Text("Общая сумма",style: TextStyle(fontSize: 16),)),
                      Container(
                          margin: EdgeInsets.only(
                              top: 1.h,
                              left: 20.w
                          ),
                          child: Text('25 899 999 сум',style: TextStyle(fontSize: 20))
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

