import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/presentation/screens/platform_widgets_screen.dart';

void main() {
  testWidgets(
    'PlatformWidgetsScreen > Android',
    (tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.android;
      await tester.pumpWidget(
        const MaterialApp(
          home: PlatformWidgetsScreen(),
        ),
      );

      expect(
        find.byType(PlatformWidgetsScreen),
        findsWidgets,
      );

      expect(
        find.byType(ElevatedButton),
        findsWidgets,
      );
    },
  );

  testWidgets(
    'PlatformWidgetsScreen > iOS',
    (tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.iOS;

      await tester.pumpWidget(
        const MaterialApp(
          home: PlatformWidgetsScreen(),
        ),
      );

      expect(
        find.byType(PlatformWidgetsScreen),
        findsWidgets,
      );

      expect(
        find.byType(CupertinoButton),
        findsWidgets,
      );

      debugDefaultTargetPlatformOverride = null;
    },
  );
}
