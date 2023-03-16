import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:simpon_clone/src/routes/app_pages.dart';

import '../../../constants/url.dart';
import '../../classroom/models/user_model.dart';
class LoginController extends GetxController {
  static LoginController get instance => Get.find();
  final storage = GetStorage();
 
 loginUser(String email, String password) async {
 try{
    var response = await http.get(
      Uri.parse(Url.loginUrl(email, password)),
    );
    
    // check of the response is 200 and the body is not empty and rediret to home page

    if(response.statusCode == 200 && response.body != '[]'){
      print('Login Success');
      var data = jsonDecode(response.body).first;
      print(data);
      // map to user model
      // save user to local storage
      // clear GetStorage
      storage.erase();
      storage.write("user", data);
      Get.offAllNamed(Routes.CLASSROOM);
    }else{
      print('Login Failed');
    }
  } catch(e){
    print('Error making request: ${e.toString()}');
  } 
}

}