
import 'package:get/get.dart';
import 'package:simpon_clone/src/features/classroom/controller/classrom_controller.dart';

class ClassroomBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClassroomController>(() => ClassroomController());
  }
}