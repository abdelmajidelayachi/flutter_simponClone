
import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:simpon_clone/src/features/briefs/model/brief_model.dart';

import '../../../constants/url.dart';

class BriefController extends GetxController {

  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }


  getAllBriefs() async {
    int promoId = box.read('user')['promo_id'];
    List<BriefModel> briefs = [];
    var res = await http.get(Uri.parse(Url.briefsByPromoId(promoId)));
    var jsonData = jsonDecode(res.body);
    
    for (var b in jsonData) {
      BriefModel brief = BriefModel.fromJson(b);
      briefs.add(brief);
    }
    return briefs;
    
  }



  
}