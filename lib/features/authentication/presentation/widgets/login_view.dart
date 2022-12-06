import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:traderx/common_widgets/t_elevated_button.dart';
import 'package:traderx/common_widgets/t_text_form_field.dart';
import 'package:traderx/constants/colors.dart';
import 'package:traderx/constants/spacing.dart';
import 'package:traderx/constants/text_styles.dart';
import 'package:traderx/features/%20main_screen/presentation/widgets/home_view.dart';
import 'package:traderx/features/authentication/presentation/provider/login_provider.dart';
import 'package:traderx/features/authentication/presentation/widgets/refactored_widgets/email_option.dart';
import 'package:traderx/features/authentication/presentation/widgets/refactored_widgets/login_option.dart';
import 'package:traderx/features/authentication/presentation/widgets/refactored_widgets/number_option.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteSmoke2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 51),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back!', style: AppStyle.kMediumText),
                Text('Michael',
                    style: AppStyle.kTitleText.copyWith(height: 1.0)),
                verticalSpaceMedium,
                Consumer(
                  builder:
                      (BuildContext context, WidgetRef ref, Widget? child) {
                    return Visibility(
                      visible: ref.watch(loginOptionsProvider),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Email', style: AppStyle.kLabelText14),
                          verticalSpaceTiny,
                          const TTextFormField(
                            hintText: "Email",
                            obscureText: false,
                          ),
                          verticalSpaceMedium
                        ],
                      ),
                    );
                  },
                ),
                const EmailOption(),
                Text('Password', style: AppStyle.kLabelText14),
                verticalSpaceTiny,
                const NumberOption(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Consumer(
                      builder:
                          (BuildContext context, WidgetRef ref, Widget? child) {
                        return Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              2,
                            ),
                          ),
                          value: ref.watch(rememberLoginProvider),
                          activeColor: Colors.yellow,
                          fillColor: MaterialStateProperty.all(kGreen),
                          onChanged: (value) {
                            ref.read(rememberLoginProvider.notifier).state =
                                value!;
                          },
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Remember Login',
                        style: AppStyle.kRegular14,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Forgot Password?',
                        style: AppStyle.kLabelText14.copyWith(
                          fontWeight: FontWeight.w700,
                          color: kGrayDark,
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpaceRegular2,
                verticalSpaceLarge,
                TElevatedButton(
                  title: 'Log In',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeView(),
                      ),
                    );
                  },
                ),
                verticalSpaceSmall,
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Don’t have an account? ',
                      style: AppStyle.kMediumText.copyWith(
                          fontWeight: FontWeight.w700, color: kGrayDim),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Sign up",
                          style: AppStyle.kMediumText.copyWith(
                            color: kGreen,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ), //, style: AppStyle.kSmallW600,
                  ),
                ),
                verticalSpaceLarge,
                Center(
                  child: Text(
                    "-or log in with-",
                    style: AppStyle.kLabelText14.copyWith(
                      color: kGrayDark,
                    ),
                  ),
                ),
                Consumer(
                  builder:
                      (BuildContext context, WidgetRef ref, Widget? child) {
                    final loginOptions = ref.watch(loginOptionsProvider);
                    return LoginOptions(
                      icon: loginOptions?  Icons.phone : Icons.email,
                      title: loginOptions? 'Phone Number' : 'Email',
                      onTap: () {
                        ref.read(loginOptionsProvider.notifier).state =
                            !ref.read(loginOptionsProvider.notifier).state;
                      },
                    );
                  },
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

