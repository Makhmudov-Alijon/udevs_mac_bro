import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udevs_mac_bro/model/user_create/UserCreatePasscodeBody.dart';
import 'package:udevs_mac_bro/model/user_create/UserCreatrePasscode.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';

class OtpPageLogic extends GetxController{
  final RestClient restClient=Get.find();
  Box box = Hive.box('product');
  userPasscode(String passcode,String passcodeToken,String fcmToken)async{
    UserCreatePasscodeBody userCreatePasscodeBody=UserCreatePasscodeBody(passcode: passcode, passcodeToken: passcodeToken, fcmToken: fcmToken);
    UserCreatrePasscode userCreatrePasscode=await restClient.userCreatePasscode(userCreatePasscodeBody, '7d4a4c38-dd84-4902-b744-0488b80a4c03') ;
    // setToken(userCreatrePasscode.data!.token!.accessToken!);
  }
  setToken( String token){
    box.put('key', token);
  }
  getToken(){
    return box.get('key');
  }
}