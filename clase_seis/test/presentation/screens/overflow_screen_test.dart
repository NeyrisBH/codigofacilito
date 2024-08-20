import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/presentation/screens/overflow_screen.dart';

void main() {
  testWidgets(
    'OverflowScreen',
    (tester) async {
      // tester.view.physicalSize = const Size(
      //   10000,
      //   4000,
      // );
      // print(tester.view.physicalSize);

      await tester.pumpWidget(
        const MaterialApp(
          home: OverflowScreen(),
        ),
      );
    },
  );
}
