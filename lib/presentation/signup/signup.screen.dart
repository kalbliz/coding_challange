import 'package:coding_challange/infrastructure/theme/app_colors.dart';
import 'package:coding_challange/presentation/signup/controllers/signup.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          children: [
            
          ],
        ),
      )),
    );
  }
}
