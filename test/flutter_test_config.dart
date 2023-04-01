import 'dart:async';

import 'package:adaptive_test/adaptive_test.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  final defaultDeviceConfigs = {
    iPhone8,
    iPhone13,
    iPadPro,
    desktop,
    pixel5,
  };
  TestWidgetsFlutterBinding.ensureInitialized();
  AdaptiveTestConfiguration.instance.setDeviceVariants(defaultDeviceConfigs);
  await loadFonts();
  await testMain();
}
