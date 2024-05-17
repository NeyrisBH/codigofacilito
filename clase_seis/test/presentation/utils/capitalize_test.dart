import 'package:flutter_test/flutter_test.dart';
import 'package:testing/presentation/utils/capitalize.dart';

void main() {
  test(
    'capitalize success',
    () {
      final name = capitalize('');
      expect(name, '');
      //expect(name, 'Neyris');
    },
  );
}
