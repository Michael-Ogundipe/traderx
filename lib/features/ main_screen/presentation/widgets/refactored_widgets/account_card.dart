import 'package:flutter/material.dart';
import 'package:traderx/constants/colors.dart';
import 'package:traderx/constants/spacing.dart';
import 'package:traderx/constants/text_styles.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.headerColor,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final Color headerColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 24.0),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration:  BoxDecoration(
            color: headerColor,
            border: Border.all(color: kWhisper, width: 0.5),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Row(
            children: [
              Text(
                title,
                style:
                    AppStyle.kMediumText.copyWith(fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              Text(
                subtitle,
                style: AppStyle.kMediumText
                    .copyWith(fontWeight: FontWeight.w600, fontFamily: "Inter"),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  "Welcome, let’s get you started",
                  style: AppStyle.kRegular12,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Image.asset('assets/icons/bank_card.png'),
                    ),
                    horizontalSpaceSmall1,
                    Text(
                      "View Virtual Card",
                      style: AppStyle.kLabelText14.copyWith(
                        color: kGrayDark,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(color: kWhisper, thickness: 0.5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Image.asset(
                        'assets/icons/cash_currency.png',
                      ),
                    ),
                    horizontalSpaceSmall1,
                    Text(
                      "Set up direct deposit",
                      style: AppStyle.kLabelText14.copyWith(
                        color: kGrayDark,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
