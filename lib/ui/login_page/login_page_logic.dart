import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:udevs_mac_bro/controller/login_page_controller.dart';
import 'package:udevs_mac_bro/model/user_create/UserCreate.dart';
import 'package:udevs_mac_bro/model/user_create/UserCreateBody.dart';
import 'package:udevs_mac_bro/model/user_create/UserCreateToken.dart';
import 'package:udevs_mac_bro/model/user_create/UserCreateTokenBody.dart';
import 'package:udevs_mac_bro/repository/api_repository/api_repository.dart';

class LoginPageLogic extends GetxController{
   Box box=Hive.box('product');
  final RestClient restClient=Get.find();
  var value=false.obs;

  userCreat(number)async{
    UserCreateBody userCreateBody=UserCreateBody(phoneNumber: number);
    UserCreate userModel=(await restClient.userCreate(userCreateBody));
    value.value=userModel.exists!;
  }
  userCreatToken(String? clientTypeId,String? password,String? username,String? tag)async{
    UserCreateTokenBody userCreateTokenBody=UserCreateTokenBody(clientTypeId: clientTypeId, password: password, username: username, tag: tag);
    UserCreateToken  user=await restClient.userCreateToken(userCreateTokenBody,'7d4a4c38-dd84-4902-b744-0488b80a4c03');
    setToken(user.data!.passcodeToken!);
  }
  setToken( String token){
    box.put('key', token);
  }
  getToken(){
   return box.get('key');
  }
}