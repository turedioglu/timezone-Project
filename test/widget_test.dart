import 'package:flutter_test/flutter_test.dart';
import 'package:timezone_by_area/core/services/api/home_service.dart';
import 'package:timezone_by_area/utils/settings/locator.dart';

void main() {
  setUp(() async {
    setupLocator();
  });

  test('Get Location Detail', () async {
    final response = await HomeService().getLocationDetail('Asia/Omsk');
    expect(response.timezone, isNotEmpty);
  });
}
