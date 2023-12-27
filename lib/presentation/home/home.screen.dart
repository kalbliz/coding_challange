// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:coding_challange/infrastructure/navigation/routes.dart';
import 'package:coding_challange/infrastructure/theme/app_colors.dart';
import 'package:coding_challange/infrastructure/theme/textstyle.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.appWhite,
        title: Text(
          'Menu',
          style: AppTextStyle.eighteen700Black(),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.chevron_back,
              color: AppColors.appTextGreyTwo,
              size: 24,
            )),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 18, horizontal: 19),
              tileColor: AppColors.appBlack,
              title: Text(
                  controller.availableCompanies
                      .elementAt(controller.activeProfile.value)
                      .companyName,
                  style: AppTextStyle.nineteen700White()),
              subtitle: Text('Switch business',
                  style: AppTextStyle.thirteen400WhiteDeco()),
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.appWhite,
                child: Center(
                  child: Text(
                    'JS',
                    style: AppTextStyle.nineteen700Black(),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  Get.bottomSheet(
                      GetBuilder<HomeController>(builder: (controller) {
                    return Container(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                      width: Get.width,
                      height: Get.height * 250 / 667,
                      decoration: const BoxDecoration(
                          color: AppColors.appWhite,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Switch business',
                                    style: AppTextStyle.eighteen700Black(),
                                  ),
                                  SizedBox(
                                    width: Get.width * 100 / 375,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      icon: const Icon(Icons.close,
                                          color: AppColors.appBlack))
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              ListView.separated(
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                  itemCount:
                                      controller.availableCompanies.length,
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      height: 12,
                                    );
                                  },
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        ListTile(
                                          contentPadding: EdgeInsets.zero,
                                          leading: index == 0
                                              ? CircleAvatar(
                                                  radius: 26,
                                                  backgroundColor:
                                                      AppColors.appBlack,
                                                  child: Center(
                                                    child: Text(
                                                      'JS',
                                                      style: AppTextStyle
                                                          .nineteen700White(),
                                                    ),
                                                  ))
                                              : index == 2
                                                  ? CircleAvatar(
                                                      radius: 26,
                                                      backgroundColor:
                                                          AppColors.appBlack,
                                                      child: SvgPicture.asset(
                                                          controller
                                                              .availableCompanies
                                                              .elementAt(index)
                                                              .businessLogo!))
                                                  : controller.availableCompanies
                                                              .elementAt(index)
                                                              .businessLogo !=
                                                          null
                                                      ? CircleAvatar(
                                                          radius: 26,
                                                          backgroundColor:
                                                              AppColors
                                                                  .appBlack,
                                                          child: Image.file(
                                                              File(controller
                                                                  .availableCompanies
                                                                  .elementAt(
                                                                      index)
                                                                  .businessLogo!)))
                                                      : null,
                                          title: Text(
                                              controller.availableCompanies
                                                  .elementAt(index)
                                                  .companyName,
                                              style: AppTextStyle
                                                  .nineteen700Black()),
                                          subtitle: Text(
                                            controller.availableCompanies
                                                .elementAt(index)
                                                .businessAddress,
                                            style:
                                                AppTextStyle.thirteen400Black(),
                                          ),
                                          trailing: IconButton(
                                            onPressed: () {
                                              controller.activeProfile.value =
                                                  index;
                                              controller.update();
                                            },
                                            icon: controller
                                                        .activeProfile.value ==
                                                    index
                                                ? const Icon(Icons.check_circle,
                                                    color: AppColors.appBlack)
                                                : const Icon(
                                                    Icons
                                                        .radio_button_unchecked_outlined,
                                                    color: AppColors.appBlack),
                                            padding: EdgeInsets.zero,
                                            visualDensity:
                                                VisualDensity.compact,
                                          ),
                                        ),
                                        const Divider(
                                          color: AppColors.appDividerGrey,
                                          height: 0,
                                          indent: 4,
                                          endIndent: 4,
                                        )
                                      ],
                                    );
                                  }),
                              const SizedBox(
                                height: 40,
                              )
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: ListTile(
                              onTap: () {
                                Get.toNamed(Routes.BUSINESSINFO);
                              },
                              contentPadding: EdgeInsets.zero,
                              leading: CircleAvatar(
                                  radius: 26,
                                  backgroundColor: AppColors.appBlack,
                                  child: Center(
                                    child: Text(
                                      '+',
                                      style: AppTextStyle.nineteen700White(),
                                    ),
                                  )),
                              title: Text('Add Account',
                                  style: AppTextStyle.nineteen700Black()),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                      backgroundColor: AppColors.appBlack.withOpacity(0.56),
                      elevation: 0,
                      isScrollControlled: true);
                },
                padding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact,
                icon: const Icon(CupertinoIcons.chevron_down,
                    size: 24, color: AppColors.appWhite),
              ),
            ),
            ...List.generate(
                controller.menuList.length,
                (index) => Column(
                      children: [
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 14),
                          title: Text(
                              controller.menuList.elementAt(index).title,
                              style: AppTextStyle.sixteen700TextAsh()),
                          subtitle: Text(
                              controller.menuList.elementAt(index).subTitle,
                              style: AppTextStyle.twelve400TextAsh()),
                          trailing: IconButton(
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              visualDensity: VisualDensity.compact,
                              icon: const Icon(Icons.arrow_forward_ios,
                                  size: 24, color: AppColors.appTextGrey)),
                        ),
                        const Divider(
                          color: AppColors.appDividerGrey,
                          height: 0,
                          indent: 4,
                          endIndent: 4,
                        ),
                      ],
                    )),
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              tileColor: AppColors.appTileGrey,
              title: Text('Account settings',
                  style: AppTextStyle.twenty700GreyTwo()),
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
              title: Text('Upgrade  your plan',
                  style: AppTextStyle.sixteen700TextAsh()),
            ),
            const Divider(
              color: AppColors.appDividerGrey,
              height: 0,
              indent: 4,
              endIndent: 4,
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
              title: Text('Country/region settings',
                  style: AppTextStyle.sixteen700TextAsh()),
              subtitle: Text('Currency, country, language...',
                  style: AppTextStyle.twelve400TextAsh()),
              trailing: IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                  icon: const Icon(Icons.arrow_forward_ios,
                      size: 24, color: AppColors.appTextGrey)),
            ),
            const Divider(
              color: AppColors.appDividerGrey,
              height: 0,
              indent: 4,
              endIndent: 4,
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              title: Text('Logout', style: AppTextStyle.sixteen700TextAsh()),
              leading: IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                  icon: const Icon(Icons.logout,
                      size: 24, color: AppColors.appBlack)),
            ),
            const Divider(
              color: AppColors.appDividerGrey,
              height: 0,
              indent: 4,
              endIndent: 4,
            ),
            const SizedBox(
              height: 70,
            )
          ],
        ),
      )),
    );
  }
}

class MenuModel {
  final String title;
  final String subTitle;
  void Function()? onTap;
  MenuModel({
    required this.title,
    required this.subTitle,
    this.onTap,
  });
}

class CompanyProfileModel {
  final String companyName;
  final String businessEmail;
  final String businessPhoneNumber;
  final String businessAddress;
  final String? businessLogo;
  final String? businessCategory;
  final String? businessAmount;
  CompanyProfileModel({
    required this.companyName,
    required this.businessEmail,
    required this.businessPhoneNumber,
    required this.businessAddress,
    this.businessLogo,
    this.businessCategory,
    this.businessAmount,
  });
}
