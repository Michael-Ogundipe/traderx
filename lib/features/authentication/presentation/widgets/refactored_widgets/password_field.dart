import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:traderx/common_widgets/t_text_form_field.dart';
import 'package:traderx/constants/colors.dart';
import 'package:traderx/features/authentication/presentation/provider/login_provider.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
    this.controller,
  }) : super(key: key);

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return TTextFormField(
          hintText: "Password",
          suffixIcon: InkWell(
            child: Icon(
                ref.watch(passwordVisibilityProvider)
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: kInactive),
            onTap: () {
              ref.read(passwordVisibilityProvider.notifier).state =
                  !ref.read(passwordVisibilityProvider.notifier).state;
            },
          ),
          obscureText: ref.watch(passwordVisibilityProvider) ? true : false,
          controller: controller,
        );
      },
    );
  }
}
