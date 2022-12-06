import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:traderx/common_widgets/t_text_form_field.dart';
import 'package:traderx/constants/colors.dart';
import 'package:traderx/constants/spacing.dart';
import 'package:traderx/constants/text_styles.dart';
import 'package:traderx/features/authentication/presentation/provider/login_provider.dart';

/// Login with Email option

class EmailOption extends StatelessWidget {
  const EmailOption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder:
          (BuildContext context, WidgetRef ref, Widget? child) {
        return Visibility(
          visible: !ref.watch(loginOptionsProvider),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Phone Number', style: AppStyle.kLabelText14),
              verticalSpaceTiny,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    padding: const EdgeInsets.only(
                        left: 6, right: 6, top: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kCardBg3,
                    ),
                    child: InkWell(
                      onTap: () {
                        showCountryPicker(
                            context: context,
                            showPhoneCode: true,
                            countryListTheme:
                            const CountryListThemeData(
                              flagSize: 25,
                              backgroundColor: Colors.white,
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blueGrey),
                              bottomSheetHeight: 500,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                            ),
                            onSelect: (Country country) {
                              ref
                                  .read(
                                  countryCodeProvider.notifier)
                                  .state = "+${country.phoneCode}";

                              ref
                                  .read(flagEmojiProvider.notifier)
                                  .state = "${country.flagEmoji}";
                            });
                      },
                      child: Text(
                        "${ref.watch(flagEmojiProvider)} ${ref.watch(countryCodeProvider)}",
                        style: AppStyle.kLabelText14
                            .copyWith(color: kGrayDark),
                      ),
                    ),
                  ),
                  horizontalSpaceSmall1,
                  const Expanded(
                    child: TTextFormField(
                      hintText: "Phone Number",
                      obscureText: false,
                      suffixIcon: Icon(
                        Icons.close_rounded,
                        color: kIconBg3,
                      ),
                    ),
                  )
                ],
              ),
              verticalSpaceMedium
            ],
          ),
        );
      },
    );
  }
}
