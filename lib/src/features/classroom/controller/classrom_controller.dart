
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../../../constants/url.dart';
import '../../authentication/models/user_model.dart';

class ClassroomController extends GetxController {
  
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    // fetch all the user by calling the repository
  }

  // readUsers() {
  //   return FirebaseFirestore.instance.collection('users').snapshots().map((snapshot) => snapshot.docs.map((doc) => UserModel.fromJson(doc.data())).toList());
    
  // }
  
  


  @override
  void onClose() {}

  

  Future<List<UserModel>> readUsers() async{
    int promoId = box.read('user')['promo_id']; 
    var res = await http.get(Uri.parse(Url.usersByPromoId(promoId)));
    var JsonData = jsonDecode(res.body);

    List<UserModel> users = [];

    for (var u in JsonData) {
      UserModel user = UserModel.fromJson(u);
      users.add(user);
    }
    return users;
    
  }
}