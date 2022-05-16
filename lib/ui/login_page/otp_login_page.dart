import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udevs_mac_bro/routes/app_routes.dart';
import 'package:udevs_mac_bro/ui/login_page/otp_page_logic.dart';

import 'package:udevs_mac_bro/ui/main/main/main_exam.dart';
import 'package:udevs_mac_bro/ui/main/profil/profil_logic.dart';

class OtpLoginPage extends StatefulWidget {
  const OtpLoginPage({Key? key}) : super(key: key);

  @override
  State<OtpLoginPage> createState() => _OtpLoginPageState();
}

class _OtpLoginPageState extends State<OtpLoginPage> {
  final logic = Get.put(OtpPageLogic());

  TextEditingController editingController = TextEditingController();
  Box box = Hive.box('product');

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
            height: height * .17,
            width: width * .9,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: height * .01, left: width * .05),
                  child: Text('Телефон номер'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: height * .01,
                    left: width * .05,
                    right: width * .05,
                  ),
                  child: TextField(
                    controller: editingController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height * .01, left: width * .05),
                  child: Text(
                    'Отправить заново',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
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
          child: Center(
            child: Text(
              'Логин',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        onTap: () {
          logic.userPasscode(editingController.text, box.get('key'),
              "emc-hQF5QjCWDrVirT28lU:APA91bEUWAsloZMGuz10sMquVPxQxwt-wNGJoR-LCcOuwrgG68C9r0KScDWJdHR6l_ZB5X-INnhZWhR_5mTlUfhqcFk4rQ1A9p9i4YShpLLGm6o-wj5zdnWKh_rgJHo8DJikuP6hg-9O");
          print(logic.getToken());

          Get.offAllNamed(AppRoutes.mainPageScreen);
        },
      ),
    );
  }
}
