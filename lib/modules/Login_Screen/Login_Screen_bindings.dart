
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import 'Login_screen_controller.dart';
class LoginScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(() => LoginScreenController());
  }
}