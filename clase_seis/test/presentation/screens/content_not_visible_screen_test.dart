import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/presentation/screens/content_not_visible_screen.dart';

void main() {
  testWidgets(
    'ContentNotVisibleScreen',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: ContentNotVisibleScreen(),
        ),
      );

      await tester.dragFrom(
        const Offset(100, 100),
        const Offset(100, -6000),
      ); //Simula un scroll (x, y)
      await tester.pumpAndSettle(); // Espera el timepo de la animación

      await tester.tap(
        find.byType(ElevatedButton),
      );

      await tester.pump();
      expect(find.text('AMAZING BOOTCAMP'), findsOneWidget);
    },
  );
}
