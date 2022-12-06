import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:traderx/features/authentication/presentation/widgets/login_view.dart';
import 'package:traderx/globals.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      scaffoldMessengerKey: snackBarKey,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: const LoginView(),
    );
  }
}
