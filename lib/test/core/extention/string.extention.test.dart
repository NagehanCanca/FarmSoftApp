import 'package:farm_soft/core/extension/string.extension.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  setUp(() {});
  test("Username Regexp", () {
    String email = "asd.com";
    expect(email.isValidUsername, null);
  });
}