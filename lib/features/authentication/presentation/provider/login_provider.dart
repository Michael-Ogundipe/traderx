import 'package:hooks_riverpod/hooks_riverpod.dart';

final passwordVisibilityProvider = StateProvider<bool>((ref) => true);

final rememberLoginProvider = StateProvider<bool>((ref) => false);

final loginOptionsProvider = StateProvider<bool>((ref) => false);