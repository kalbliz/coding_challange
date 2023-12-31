// ignore_for_file: invalid_use_of_protected_member

import 'package:coding_challange/infrastructure/helpers/textfield_validator.dart';
import 'package:coding_challange/presentation/home/controllers/home.controller.dart';
import 'package:coding_challange/presentation/shared/models/company.profile.model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final TextEditingController businessNameController = TextEditingController();
  final TextEditingController businessEmailController = TextEditingController();
  final TextEditingController businessPhoneNumberController =
      TextEditingController();
  final TextEditingController businessAddressController =
      TextEditingController();
  final TextEditingController businessLogoController = TextEditingController();
  final TextEditingController businessCategoryController =
      TextEditingController();
  final TextEditingController businessAmountController =
      TextEditingController();
  final businessNameValidator =
      RequiredValidator(errorText: 'Field is required');
  final businessEmailValidator = MultiValidator([
    RequiredValidator(errorText: 'Field is required'),
    EmailValidator(errorText: 'Invalid email')
  ]);
  final businessPhoneNumberValidator =
      RequiredValidator(errorText: 'Field is required');
  final businessAmountNumberValidator =
      RequiredValidator(errorText: 'Field is required');
  final businessCategoryNumberValidator =
      RequiredValidator(errorText: 'Field is required');
  final businessAddressValidator =
      RequiredValidator(errorText: 'Field is required');
  RxBool isButtonActive = false.obs;
  RxBool isBrandButtonActive = false.obs;
  RxInt activePage = 0.obs;
  GlobalKey<FormState> businessInfoFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> businessBrandFormKey = GlobalKey<FormState>();
  String imagePath = '';
  addBusiness() async {
    Get.find<HomeController>().availableCompanies.add(CompanyProfileModel(
        companyName: businessNameController.value.text,
        businessEmail: businessEmailController.value.text,
        businessPhoneNumber: businessPhoneNumberController.value.text,
        businessAddress: businessAddressController.value.text,
        businessLogo: businessLogoController.value.text,
        businessAmount: businessAmountController.value.text,
        businessCategory: businessCategoryController.value.text));
        Get.find<HomeController>().activeProfile.value = Get.find<HomeController>().availableCompanies.length - 1 ;
    Get.find<HomeController>().update();
    for (int i = 3; i > 0; i--) {
      Get.back();
    }
    
  }

  @override
  void dispose() {
    businessNameController.clear();
    businessEmailController.clear();
    businessPhoneNumberController.clear();
    businessAddressController.clear();
    businessLogoController.clear();
    businessCategoryController.clear();
    businessAmountController.clear();
    businessInfoFormKey.currentState!.reset();
    businessBrandFormKey.currentState!.reset();
    super.dispose();
  }
}
