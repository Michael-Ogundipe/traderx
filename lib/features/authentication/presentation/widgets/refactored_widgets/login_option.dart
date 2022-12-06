import 'package:flutter/material.dart';
import 'package:traderx/constants/colors.dart';
import 'package:traderx/constants/spacing.dart';
import 'package:traderx/constants/text_styles.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({
    Key? key,
    required this.icon,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: kGreen,
          ),
        ),
        padding: const EdgeInsets.only(
          top: 8.5,
          bottom: 13.5,
          left: 13.5,
          right: 13.5,
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 27,
        ),
        child: InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: kGreen,
              ),
              horizontalSpaceRegular,
              Text(
                title,
                style: AppStyle.kLabelText14.copyWith(
                  fontWeight: FontWeight.w700,
                  color: kGreen,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
