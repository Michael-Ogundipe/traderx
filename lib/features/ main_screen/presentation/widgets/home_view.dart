import 'package:flutter/material.dart';
import 'package:traderx/constants/colors.dart';
import 'package:traderx/constants/spacing.dart';
import 'package:traderx/constants/text_styles.dart';
import 'package:traderx/features/%20main_screen/presentation/widgets/refactored_widgets/account_card.dart';
import 'package:traderx/features/%20main_screen/presentation/widgets/refactored_widgets/account_header.dart';
import 'package:traderx/features/%20main_screen/presentation/widgets/refactored_widgets/info_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: SingleChildScrollView(
            child: Column(
              children:  const [
                verticalSpaceMedium2,
                AccountHeader(),
                AccountCard(
                  title: "Checkings Account",
                  subtitle: "\$25,000.00",
                  headerColor: kPrimary50,
                ),
                AccountCard(
                  title: "Business Account",
                  subtitle: "\$5,000.00",
                  headerColor: kSecondary50,
                ),
                InfoCard(
                  title: "Get \$5 plus 10% of the fee for 365 days ",
                  subtitle: "Refer a friend and get \$5 when they make their first dollars to naira exchange of \$500 and above, "
                      "plus 10% of the fee everytime they make exchange for 365 days.",
                  icon: "assets/icons/group.png",
                  primaryColor: kCardBg,
                  backgroundColor: kCardBg4,
                  invertImage: false,
                ),
                InfoCard(
                  title: "Currency Exchange",
                  subtitle: "View pending and completed exchange requesting",
                  icon: "assets/images/img1.png",
                  primaryColor: kCardBg2,
                  backgroundColor: kCardBg5,
                  invertImage: false,
                ),
                InfoCard(
                  title: "Get Paid",
                  subtitle: "Create and send payment invoice to your clients and get paid for services rendered",
                  icon: "assets/images/img3.png",
                  primaryColor: kCardBg6,
                  backgroundColor: kCardBg7,
                  invertImage: true,
                ),

                verticalSpaceLarge
              ],

            ),
          ),
        ),
      ),
    );
  }
}

