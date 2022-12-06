import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:traderx/constants/colors.dart';
import 'package:traderx/constants/spacing.dart';
import 'package:traderx/constants/text_styles.dart';

class AccountHeader extends StatelessWidget {
  const AccountHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 22,
          backgroundImage: AssetImage('assets/images/img2.png'),
        ),
        horizontalSpaceTiny,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome', style: AppStyle.kRegular14),
            Text(
              'Michael Ajayi',
              style: AppStyle.kTitleText.copyWith(fontSize: 18, height: 1.2),
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: kIconBg2,
          child: Badge(
            position: BadgePosition.topEnd(top: 0, end: 3),
            child: const Icon(
              Icons.notifications,
              color: kIconBg,
            ),
          ),
        )
      ],
    );
  }
}
