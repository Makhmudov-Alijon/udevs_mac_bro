import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udevs_mac_bro/controller/login_page_controller.dart';
import 'package:udevs_mac_bro/model/user_create/UserCreate.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';
import 'package:udevs_mac_bro/routes/app_routes.dart';
import 'package:udevs_mac_bro/ui/login_page/login_page_logic.dart';

import 'package:udevs_mac_bro/ui/login_page/otp_login_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var logic=Get.put(LoginPageLogic());
  Box box=Hive.box('product');
  LoginController controller=Get.put(LoginController());
  TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Логин',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: height * .02, left: width * .05),
            height: height * .15,
            width: width * .9,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: height * .01, left: width * .05),
                  child: const Text('Телефон номер'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: height * .01,
                    left: width * .05,
                    right: width * .05,
                  ),
                  child: TextField(
                    controller: textEditingController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomSheet: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(bottom: height * .05, left: width * .05),
          height: height * .07,
          width: width * .9,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text(
              'Логин',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        onTap: () {
          logic.userCreat(textEditingController.text.toString());
          if(logic.value.value){
            print('user creat');
            logic.userCreatToken('5a3818a9-90f0-44e9-a053-3be0ba1e2c07', '', textEditingController.text.toString(), 'ahqCTxXquk3');
            print(logic.getToken());
            if(box.isNotEmpty||textEditingController.text.isNotEmpty){
             Get.toNamed(AppRoutes.detail);
            }else{
              return null;
            }

          }else{
            print('not user creat');
          }

        },
      ),
    );
  }
}
