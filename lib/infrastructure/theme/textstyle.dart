import 'package:flutter/material.dart';
import 'package:coding_challange/infrastructure/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle eighteen700Black() {
    return GoogleFonts.figtree(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: AppColors.appTextBlack);
  }
  static TextStyle eighteen600Black() {
    return GoogleFonts.figtree(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.appTextBlack);
  }

  static TextStyle nineteen700Black() {
    return GoogleFonts.figtree(
      fontSize: 19,
      fontWeight: FontWeight.w700,
      color: AppColors.appBlack,
    );
  }

  static TextStyle nineteen700White() {
    return GoogleFonts.figtree(
      fontSize: 19,
      fontWeight: FontWeight.w700,
      color: AppColors.appWhite,
    );
  }

  static TextStyle twenty700GreyTwo() {
    return GoogleFonts.figtree(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.appTextGreyTwo,
    );
  }

  static TextStyle thirteen400WhiteDeco() {
    return GoogleFonts.figtree(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: AppColors.appWhite,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.appWhite);
  }

  static TextStyle sixteen700TextAsh() {
    return GoogleFonts.figtree(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: AppColors.appTextGrey,
    );
  }

  static TextStyle twelve400TextAsh() {
    return GoogleFonts.figtree(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.appTextGrey,
    );
  }

  static TextStyle thirteen400Black() {
    return GoogleFonts.figtree(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: AppColors.appBlack,
    );

  }
  static TextStyle ten400Black() {
    return GoogleFonts.figtree(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: AppColors.appBlack,
    );
  }
    static TextStyle hintText() {
    return GoogleFonts.figtree(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: const Color.fromRGBO(166, 166, 166, 1),
    );
  }
}
