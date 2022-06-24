import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BasketPage extends StatelessWidget {
   BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            // AppBar(
            //   title: Text('Корзина',style: TextStyle(color: Colors.black),),
            //   centerTitle: true,
            //   backgroundColor: Colors.white,
            // ),
            // Container(
            //   margin: EdgeInsets.only(
            //       top: 2,
            //       left: 5
            //   ),
            //   height: 20,
            //   width: 90,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: Colors.white,
            //   ),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Container(
            //         margin: EdgeInsets.only(
            //             top: 2,
            //             left: 5
            //         ),
            //         child: Image(
            //           width: 20,
            //           image: AssetImage('images/imagecarousel.png'),
            //         ),
            //       ),
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children:  [
            //           Container(
            //               margin: EdgeInsets.only(
            //                   top: 2,
            //                   left: 5
            //               ),
            //               child: Text("13-inch MacBook Air -\n Space Gray",style: TextStyle(fontSize: 15),)),
            //           Container(
            //               margin: EdgeInsets.only(
            //                   top: 2,
            //                   left: 5
            //               ),
            //               child: Text("12 999 999 сум",style: TextStyle(color: Colors.blue),)),
            //           Row(
            //             children: [
            //               Container(
            //                 margin: EdgeInsets.only(
            //                     top: 2,
            //                     left: 5
            //                 ),
            //                 height: 4,
            //                 width: 8,
            //                 decoration: BoxDecoration(
            //                     color: Colors.grey,
            //                     borderRadius: BorderRadius.circular(8)
            //                 ),
            //                 child: Center(child: Text('-')),
            //               ),
            //               Container(
            //                   margin: EdgeInsets.only(
            //                       top: 2,
            //                       left: 5
            //                   ),
            //                   child: Text("1")),
            //               Container(
            //                 margin: EdgeInsets.only(
            //                     top: 2,
            //                     left: 5
            //                 ),
            //                 height: 4,
            //                 width: 8,
            //                 decoration: BoxDecoration(
            //                     color: Colors.grey,
            //                     borderRadius: BorderRadius.circular(8)
            //                 ),
            //                 child: Center(child: Text('+')),
            //               ),
            //             ],
            //           )
            //         ],
            //       ),
            //       Container(
            //         margin: EdgeInsets.only(
            //             top: 2,
            //             left: 5
            //         ),
            //         child: Icon(Icons.delete_outline,color: Colors.grey,size: 30,),
            //       )
            //     ],
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.only(
            //       top: 2,
            //       left: 5
            //   ),
            //   height: 20,
            //   width: 9,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: Colors.white,
            //   ),
            //   child: Column(
            //     children: [
            //       Row(
            //         children: [
            //           Container(
            //               margin: EdgeInsets.only(
            //                   top: 2,
            //                   left: 2
            //               ),
            //               child: Text("Сумма",style: TextStyle(fontSize: 20),)),
            //           Container(
            //               margin: EdgeInsets.only(
            //                   top: 2,
            //                   left: 30
            //               ),
            //               child: Text('26 599 999 сум',style: TextStyle(fontSize: 20))
            //           )
            //         ],
            //       ),
            //       Row(
            //         children: [
            //           Container(
            //               margin: EdgeInsets.only(
            //                   top: 1,
            //                   left: 2
            //               ),
            //               child: Text("Скидка",style: TextStyle(fontSize: 20),)),
            //           Container(
            //               margin: EdgeInsets.only(
            //                   top: 1,
            //                   left: 5
            //               ),
            //               child: Text('-7,5%',style: TextStyle(fontSize: 20))
            //           )
            //         ],
            //       ),
            //       Row(
            //         children: [
            //           Container(
            //               margin: EdgeInsets.only(
            //                   top: 1,
            //                   left: 2
            //               ),
            //               child: Text("Сумма доставки",style: TextStyle(fontSize: 15),)),
            //           Container(
            //               margin: EdgeInsets.only(
            //                   top: 1,
            //                   left: 30
            //               ),
            //               child: Text('Бесплатно',style: TextStyle(fontSize: 20))
            //           )
            //         ],
            //       ),
            //       Divider(),
            //       Row(
            //         children: [
            //           Container(
            //               margin: EdgeInsets.only(
            //                   top: 1,
            //                   left: 2
            //               ),
            //               child: Text("Общая сумма",style: TextStyle(fontSize: 16),)),
            //           Container(
            //               margin: EdgeInsets.only(
            //                   top: 1,
            //                   left: 20
            //               ),
            //               child: Text('25 899 999 сум',style: TextStyle(fontSize: 20))
            //           )
            //         ],
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

