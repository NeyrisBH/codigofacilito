import 'package:flutter_test/flutter_test.dart';
import 'package:testing/presentation/utils/validators.dart';

void main() {
  test(
    'isValidEmail special characters not allowed',
    () {
      final isEmail = isValidEmail('l&bohorquez@cccasanare.com');
      expect(isEmail, false);
    },
  );

  test(
    'isValidEmail success',
    () {
      final isEmail = isValidEmail('lbohorquez@cccasanare.com');
      expect(isEmail, true);
    },
  );

  test(
    'isValidPassword success',
    () {
      final errors = isValidPassword('C0ntr4s3ñ4');
      expect(errors.isEmpty, true);
    },
  );
}
