import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/presentation/screens/overflow_screen.dart';

void main() {
  testWidgets(
    'OverflowScreen',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: OverflowScreen(),
        ),
      );
    },
  );
}
