import 'package:flutter_test/flutter_test.dart';
import 'package:testing/presentation/utils/validators.dart';

void main() {
  test(
    'isValidEmail special characters not allowed',
    () {
      expect(
        isValidEmail('admin,test@test.com'),
        false,
      );
    },
  );

  test(
    'isValidEmail success',
    () {
      expect(
        isValidEmail('admintest@test.com'),
        true,
      );
    },
  );

  test(
    'isValidPassword',
    () {
      final errors = isValidPassword('1A12345678');
      expect(
        errors.isEmpty,
        true,
      );
    },
  );
}
