// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coding_challange/infrastructure/theme/app_colors.dart';
import 'package:coding_challange/infrastructure/theme/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppAuthInput extends StatelessWidget {
  final String? hintText;
  final String? suffixText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final VoidCallback? toggleEye;
  final KeyboardType? keyboard;
  final String? init;
  final bool isPassword;
  final Color? isPasswordColor;
  final bool? showObscureText;
  final bool obscureText;
  final Color? styleColor;
  final Color? hintStyleColor;
  final bool enabled;
  final String? labelText;
  final double? labelTextFont;
  final dynamic maxLines;
  final Color borderColor;
  final Widget? prefix;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final Color fillColor;
  final bool isError;
  final String showErrorText;
  final Color enabledBorder;
  final Color focusedBorder;
  final Color labelTextColor;
  final Widget? suffix;
  final VoidCallback? onEditingComplete;
  final TextCapitalization? textCapitalization;
  final bool readOnly;

  const AppAuthInput(
      {super.key,
      this.hintText,
      this.validator,
      this.onSaved,
      this.toggleEye,
      this.init,
      this.isPassword = false,
      this.isPasswordColor,
      this.showObscureText,
      this.obscureText = false,
      this.keyboard,
      this.styleColor,
      this.hintStyleColor,
      this.enabled = true,
      this.readOnly = false,
      this.labelText,
      this.labelTextFont,
      this.onEditingComplete,
      this.maxLines = 1,
      this.borderColor = const Color(0xFFDCE1E9),
      this.onChanged,
      this.prefix,
      this.suffix,
      this.suffixText,
      this.controller,
      this.inputFormatters,
      this.fillColor = Colors.transparent,
      this.isError = false,
      this.textCapitalization,
      this.showErrorText = "field can't be empty",
      this.enabledBorder = const Color(0xFFDCE1E9),
      this.focusedBorder = const Color(0xFF1493A4),
      this.labelTextColor = const Color(0xFF202020)});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      labelText == null
          ? Container()
          : Text(
              '$labelText',
              style: TextStyle(
                  color: labelTextColor, fontSize: labelTextFont ?? 16),
            ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(0),
        child: TextFormField(
            readOnly: readOnly,
            inputFormatters: inputFormatters,
            controller: controller,
            key: key,
            enabled: enabled,
            style: TextStyle(
                color: labelTextColor,
                fontWeight: FontWeight.w300,
                fontSize: 14),
            cursorColor: AppColors.appBlack,
            obscureText: obscureText,
            maxLines: maxLines,
            onChanged: onChanged,
            onEditingComplete: onEditingComplete,
            textCapitalization: textCapitalization ?? TextCapitalization.none,
            cursorOpacityAnimates: true,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(25, 16, 10, 16),
              suffixText: suffixText,
              hintText: hintText,
              prefixIcon: prefix,
              fillColor: const Color.fromRGBO(245, 245, 245, 1),
              filled: true,
              hintStyle: AppTextStyle.hintText(),
              isDense: true,
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.red, width: 0.5),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.red, width: 0.5),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: enabledBorder, width: 0.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 31, 32, 32), width: 0.5),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: borderColor, width: 0.5),
              ),
              // contentPadding: EdgeInsets.only(top: 10, bottom: 10),
              suffixIcon: isPassword
                  ? GestureDetector(
                      onTap: toggleEye,
                      child: Icon(
                        showObscureText!
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: const Color(0xFFBAC3D2),
                      ),
                    )
                  : suffix,
              errorText: isError ? showErrorText : null,
            ),
            validator: validator,
            initialValue: init,
            onSaved: onSaved,
            keyboardType: keyboard == KeyboardType.email
                ? TextInputType.emailAddress
                : keyboard == KeyboardType.number
                    ? TextInputType.number
                    : keyboard == KeyboardType.phone
                        ? TextInputType.phone
                        : TextInputType.text),
      ),
    ]);
  }
}

// ignore: must_be_immutable

enum KeyboardType { email, phone, number, text }

// ignore: must_be_immutable
