import 'package:coding_challange/infrastructure/theme/textfield_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final TextEditingController businessNameController = TextEditingController();
  final TextEditingController businessEmailController = TextEditingController();
  final businessNameValidator =
      RequiredValidator(errorText: 'Field is required');
  final businessEmailValidator = MultiValidator([
    RequiredValidator(errorText: 'Field is required'),
    EmailValidator(errorText: 'Invalid email')
  ]);
}
