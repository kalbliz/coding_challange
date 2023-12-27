// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:coding_challange/infrastructure/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppAuthButton extends StatefulWidget {
  void Function()? onPressed;
  final String buttonText;
  final Color? textColor;
  bool isActive;
  AppAuthButton({
    Key? key,
    this.onPressed,
    required this.buttonText,
    this.textColor,
    required this.isActive,
  }) : super(key: key);

  @override
  State<AppAuthButton> createState() => _AppAuthButtonState();
}

class _AppAuthButtonState extends State<AppAuthButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: MediaQuery.sizeOf(context).width * 207 / 375,
      decoration: BoxDecoration(
        color: widget.isActive ? AppColors.appBlack : AppColors.appDividerGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            // padding: const EdgeInsets.symmetric(vertical: 10)
          ),
          child: Center(
            child: Text(
              widget.buttonText,
              style: TextStyle(
                  fontSize: 14,
                  color: widget.textColor,
                  fontWeight: FontWeight.w400),
            ),
          )),
    );
  }
}
