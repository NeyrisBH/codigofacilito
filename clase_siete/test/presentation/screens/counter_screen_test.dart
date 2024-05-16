import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/presentation/screens/counter_screen.dart';

void main() {
  testWidgets(
    'CounterScreen',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: CounterScreen(),
        ),
      );

      expect(find.byType(CounterScreen), findsWidgets);
      expect(find.text('0'), findsWidgets);

      final buttonFinder = find.byKey(
        const Key('button'),
      );

      for (int i = 0; i < 10; i++) {
        await tester.tap(buttonFinder);
      }

      await tester.pump();

      expect(find.text('10'), findsWidgets);
    },
  );
}
