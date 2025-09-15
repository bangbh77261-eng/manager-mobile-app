
import 'package:get/get.dart';
import 'package:my_project_mobile_app/modules/Main_Screen/Main_controller.dart';
class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
  }
}