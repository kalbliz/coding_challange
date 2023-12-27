import 'package:coding_challange/presentation/signup/controllers/signup.controller.dart';
import 'package:get/get.dart';

class SignUpControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(
      () => SignUpController(),
    );
  }
}