
import '../modules/Login_Screen/Login_Screen_bindings.dart';
import '../modules/Login_Screen/Login_Screen_views.dart';
import 'app_router.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
class AppPages {
  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => LoginScreenViews(),
      binding: LoginScreenBindings(),
    ),
  ];
}