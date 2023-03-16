

import 'dart:convert';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';
import 'package:simpon_clone/src/features/home/model/Classroom_model.dart';
import 'package:http/http.dart' as http;

import '../../../constants/url.dart';

class HomeController extends GetxController {
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}



  // Future<ClassroomModel> readPromo() async {
  //    int promoId = box.read('user')['promo_id'];
  //   var res = await http.get(Uri.parse(Url.getPromoById(promoId)));
  //   var jsonData = jsonDecode(res.body);

  //   ClassroomModel promo = ClassroomModel.fromJson(jsonData);
    
  // }
  
}