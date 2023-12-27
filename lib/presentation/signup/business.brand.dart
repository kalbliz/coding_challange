import 'package:coding_challange/infrastructure/helpers/app_assets.dart';
import 'package:coding_challange/presentation/shared/app_button.dart';
import 'package:coding_challange/infrastructure/theme/app_colors.dart';
import 'package:coding_challange/infrastructure/helpers/app_utils.dart';
import 'package:coding_challange/infrastructure/helpers/textfield.dart';
import 'package:coding_challange/infrastructure/helpers/textstyle.dart';
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
                  color: AppColors.appDividerGrey,
                  borderRadius: BorderRadius.circular(8)),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 3,
              width: 30,
              decoration: BoxDecoration(
                  color: AppColors.appBlack,
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
                      AppAssets.editIcon,
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Business Branding.',
                    style: AppTextStyle.eighteen600Black(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Manage your business’s \nbranding',
                    textAlign: TextAlign.center,
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
                        controller.isButtonActive.value = controller
                            .businessBrandFormKey.currentState!
                            .validate();
                        controller.update();
                      },
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              AppUtils.getImage().then((value) {
                                controller.imagePath = value;
                                controller.businessLogoController.value = value;
                              });
                            },
                            child: AppAuthInput(
                              hintText: 'Upload your logo',
                              readOnly: true,
                              controller: controller.businessLogoController,
                              validator: controller.businessNameValidator,
                              keyboard: KeyboardType.text,
                              suffix: Padding(
                                padding: const EdgeInsets.only(right: 22),
                                child: SvgPicture.asset(
                                  AppAssets.cloudIcon,
                                  height: 24,
                                  width: 24,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          AppAuthInput(
                            hintText: 'Business Category',
                            controller: controller.businessCategoryController,
                            validator: controller.businessEmailValidator,
                            keyboard: KeyboardType.text,
                            suffix: Padding(
                              padding: const EdgeInsets.only(right: 22),
                              child: SvgPicture.asset(
                                AppAssets.categoryIcon,
                                height: 24,
                                width: 24,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          AppAuthInput(
                            hintText: ' NGN - Nigerian Naira (₦)',
                            controller: controller.businessAmountController,
                            validator: controller.businessPhoneNumberValidator,
                            keyboard: KeyboardType.number,
                            suffix: Padding(
                              padding: const EdgeInsets.only(right: 22),
                              child: SvgPicture.asset(
                                AppAssets.moneyIcon,
                                height: 24,
                                width: 24,
                                fit: BoxFit.contain,
                              ),
                            ),
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
                    buttonText: 'Create Your Invoice',
                    textColor: AppColors.appWhite,
                    onPressed: () {
                      controller.addBusiness();
                    },
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
