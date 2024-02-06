import '../core/init/network/network.manager.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  setUp(() {
    final _ = NetworkManager.instance!.coreDio;
  });
  test("Sample", () {});
}