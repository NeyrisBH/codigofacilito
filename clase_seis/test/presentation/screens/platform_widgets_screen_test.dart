import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/presentation/screens/platform_widgets_screen.dart';

void main() {
  tearDownAll(() => '👍'); //Se ejecuta despues de todos los test
  testWidgets(
    'PlatformWidgetsScreen > Android',
    (tester) async {
      //debugDefaultTargetPlatformOverride = TargetPlatform.android;
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
      addTearDown(
        () {
          print('✔' ' Se ejecuta despues del Text');
        },
      );

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

      debugDefaultTargetPlatformOverride =
          null; //Regresar a su valor por defecto
    },
  );
}
