import 'package:flutter/material.dart';
import 'package:traderx/constants/colors.dart';
import 'package:traderx/constants/text_styles.dart';

class TTextFormField extends StatelessWidget {
  const TTextFormField({
    Key? key,
    required this.hintText,
    this.prefix,
    this.validator,
    this.keyboardType,
    this.maxLength,
    this.controller,
    this.onChanged,
    this.suffixIcon,
    required this.obscureText,
  }) : super(key: key);

  final String hintText;
  final Widget? prefix;
  final Widget? suffixIcon;
  final bool obscureText;
  final int? maxLength;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      obscureText: obscureText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        filled: true,
        fillColor: kWhiteSmoke,
        prefix: prefix,

        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: AppStyle.kLabelText14.copyWith(
          color: kSilver,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: kWhiteSmoke),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: kGreen),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: kRed),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: kRed),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
