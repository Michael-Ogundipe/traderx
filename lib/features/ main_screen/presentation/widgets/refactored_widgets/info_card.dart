import 'package:flutter/material.dart';
import 'package:traderx/constants/colors.dart';
import 'package:traderx/constants/spacing.dart';
import 'package:traderx/constants/text_styles.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.primaryColor,
    required this.backgroundColor,
    required this.invertImage,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String icon;
  final Color primaryColor;
  final Color backgroundColor;
  final bool invertImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: MediaQuery.of(context).size.width * 0.04,
          bottom: -12,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 103,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 36.0),
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Visibility(visible: !invertImage, child: Row(
                children: [
                  Image.asset(icon),
                  horizontalSpaceSmall,
                ],
              )),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.5,
                    ),
                    child: Text(
                      title,
                      style: AppStyle.kRegular14
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.5,
                    ),
                    child: Text(
                      subtitle,
                      style: AppStyle.kRegular12.copyWith(color: kGray8),
                    ),
                  )
                ],
              ),
              Visibility(visible: invertImage, child: Row(
                children: [
                  horizontalSpaceSmall,
                  Image.asset(icon),
                ],
              )),
            ],
          ),
        ),
      ],
    );
  }
}
