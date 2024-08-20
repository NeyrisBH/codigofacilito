import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/presentation/screens/tabs_screen.dart';

void main() {
  testWidgets(
    'TabsScreen',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: TabsScreen(),
        ),
      );

      expect(find.text('content 1'), findsOneWidget);

      await tester.tap(find.text('2'));
      await tester.pumpAndSettle(); //Espera en tiempo de la animación
      expect(find.text('content 2'), findsOneWidget);

      await tester.tap(find.text('3'));
      await tester.pumpAndSettle(); //Espera en tiempo de la animación
      expect(find.text('content 3'), findsOneWidget);
    },
  );
}
