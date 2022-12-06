import 'package:flutter/material.dart';
import 'package:traderx/constants/colors.dart';
import 'package:traderx/constants/spacing.dart';
import 'package:traderx/constants/text_styles.dart';
import 'package:traderx/features/%20main_screen/presentation/widgets/refactored_widgets/account_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteSmoke2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 45.0),
          child: Column(
            children:  [
              Row(
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
                      Text('Michael Ajayi', style: AppStyle.kTitleText.copyWith(fontSize: 18, height: 1.2)),
                    ],
                  )
                ]
              ),
              const AccountCard(
                title: "Checkings Account",
                subtitle: "\$25,000.00",
                headerColor: kPrimary50,
              ),
              const AccountCard(
                title: "Business Account",
                subtitle: "\$5,000.00",
                headerColor: kSecondary50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

