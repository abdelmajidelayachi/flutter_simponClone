

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:simpon_clone/src/features/authentication/models/user_model.dart';

class UserRepository extends GetxController {

  static UserRepository get to => Get.find();

  final _db = FirebaseFirestore.instance;


}