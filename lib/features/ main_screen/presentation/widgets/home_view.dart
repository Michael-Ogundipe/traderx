import 'package:flutter/material.dart';
import 'package:traderx/constants/colors.dart';
import 'package:traderx/constants/spacing.dart';
import 'package:traderx/constants/text_styles.dart';
import 'package:traderx/features/%20main_screen/presentation/widgets/refactored_widgets/account_card.dart';
import 'package:traderx/features/%20main_screen/presentation/widgets/refactored_widgets/account_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteSmoke2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 45.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AccountHeader(),
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
                Container(
                  margin: const EdgeInsets.only(top: 24.0),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 12.0),
                  decoration: BoxDecoration(
                    color: kCardBg,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/group.png"),
                      horizontalSpaceSmall,
                      Column(
                        children: [
                          Text(
                            "Get \$5 plus 10% of the fee for 365 days ",
                            style: AppStyle.kRegular14
                                .copyWith(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Refer a friend and get \$5 when they make their first dollars to naira exchange of \$500 and above, "
                            "plus 10% of the fee everytime they make exchange for 365 days.",
                            style: AppStyle.kRegular12.copyWith(color: kGray8),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 24.0),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 12.0),
                  decoration: BoxDecoration(
                    color: kCardBg2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/img1.png"),
                          horizontalSpaceSmall,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Currency Exchange",
                                style: AppStyle.kRegular14
                                    .copyWith(fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "View pending and completed exchange request",
                                style: AppStyle.kRegular12.copyWith(color: kGray8),
                              )
                            ],
                          ),
                        ],
                      )
                    ]
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
