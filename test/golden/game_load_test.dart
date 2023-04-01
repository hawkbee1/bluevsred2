import 'package:adaptive_test/adaptive_test.dart';
import 'package:bluevsred2/app/view/app.dart';

void main() {
  testAdaptiveWidgets(
    '$App render without regressions',
    (tester, variant) async {
      await tester.pumpWidget(
        AdaptiveWrapper(
          windowConfig: variant,
          tester: tester,
          child: const App(),
        ),
      );
      await tester.pumpAndSettle(const Duration(seconds: 400));

      await tester.expectGolden<App>(variant);
    },
  );
}
