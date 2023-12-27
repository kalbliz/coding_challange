import 'package:coding_challange/infrastructure/theme/textfield_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final TextEditingController businessNameController = TextEditingController();
  final TextEditingController businessEmailController = TextEditingController();
  final TextEditingController businessPhoneNumberController =
      TextEditingController();
  final TextEditingController businessAddressController =
      TextEditingController();
  final businessNameValidator =
      RequiredValidator(errorText: 'Field is required');
  final businessEmailValidator = MultiValidator([
    RequiredValidator(errorText: 'Field is required'),
    EmailValidator(errorText: 'Invalid email')
  ]);
  final businessPhoneNumberValidator =
      RequiredValidator(errorText: 'Field is required');
  final businessAddressValidator =
      RequiredValidator(errorText: 'Field is required');
  RxBool isButtonActive = false.obs;
  RxInt activePage = 0.obs;
  final GlobalKey<FormState> businessInfoFormKey = GlobalKey<FormState>();
    final GlobalKey<FormState> businessBrandFormKey = GlobalKey<FormState>();
}
