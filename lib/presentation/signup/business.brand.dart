import 'package:coding_challange/infrastructure/theme/app_assets.dart';
import 'package:coding_challange/infrastructure/theme/app_button.dart';
import 'package:coding_challange/infrastructure/theme/app_colors.dart';
import 'package:coding_challange/infrastructure/theme/textfield.dart';
import 'package:coding_challange/infrastructure/theme/textstyle.dart';
import 'package:coding_challange/presentation/signup/controllers/signup.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BusinessBrandScreen extends GetView<SignUpController> {
  const BusinessBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 3,
              width: 30,
              decoration: BoxDecoration(
                  color: AppColors.appBlack,
                  borderRadius: BorderRadius.circular(8)),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 3,
              width: 30,
              decoration: BoxDecoration(
                  color: AppColors.appDividerGrey,
                  borderRadius: BorderRadius.circular(8)),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 30),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: SvgPicture.asset(
                      AppAssets.recieptIcon,
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Business Information.',
                    style: AppTextStyle.eighteen600Black(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Create your business profile.',
                    style: AppTextStyle.thirteen400Black(),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    '(All fields are optional.)',
                    style: AppTextStyle.ten400Black(),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Form(
                      key: controller.businessBrandFormKey,
                      onChanged: () {
                        controller.isButtonActive.value =
                            controller.businessBrandFormKey.currentState!.validate();
                        controller.update();
                      },
                      child: Column(
                        children: [
                          AppAuthInput(
                            hintText: 'Business name',
                            controller: controller.businessNameController,
                            validator: controller.businessNameValidator,
                            keyboard: KeyboardType.text,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          AppAuthInput(
                            hintText: 'Business email address',
                            controller: controller.businessEmailController,
                            validator: controller.businessEmailValidator,
                            keyboard: KeyboardType.email,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          AppAuthInput(
                              hintText: 'Business phone number',
                              controller:
                                  controller.businessPhoneNumberController,
                              validator:
                                  controller.businessPhoneNumberValidator,
                              keyboard: KeyboardType.phone,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(11),
                              ]),
                          const SizedBox(
                            height: 20,
                          ),
                          AppAuthInput(
                            hintText: 'Business address',
                            controller: controller.businessAddressController,
                            validator: controller.businessAddressValidator,
                            keyboard: KeyboardType.email,
                          ),
                          const SizedBox(
                            height: 100,
                          )
                        ],
                      ))
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: AppColors.appWhite,
                child: GetBuilder<SignUpController>(builder: (controller) {
                  return AppAuthButton(
                    isActive: controller.isButtonActive.value,
                    buttonText: 'Next',
                    textColor: AppColors.appWhite,
                  );
                }),
              ),
            )
          ],
        ),
      )),
    );
  }
}
