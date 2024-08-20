import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing/presentation/screens/counter_screen.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
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

      final buttonFinder = find.byKey(const Key('button'));

      for (var i = 0; i < 10; i++) {
        await Future.delayed(const Duration(milliseconds: 500));
        await tester.tap(buttonFinder);
        await tester.pump();
        expect(find.text('${i + 1}'), findsWidgets);
      }
    },
  );
}