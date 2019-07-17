import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  FlutterDriver driver;

  Future<SerializableFinder> _findAndWaitFor(String key) async {
    final _finder = find.byValueKey(key);
    await driver.waitFor(_finder);
    return _finder;
  }

  Future<SerializableFinder> _tap(String key) async {
    final _finder = await _findAndWaitFor(key);
    await driver.tap(_finder);
    return _finder;
  }

  Future _goBack() async {
    await driver.waitFor(find.pageBack());
    await Future.delayed(Duration(seconds: 1));
    await driver.tap(find.pageBack());
  }

  group('App Happy Path', () {
    // Connect to the Flutter driver before running any tests
    setUpAll(() async {
      try {
        driver = await FlutterDriver.connect();
      } catch (e) {
        print(e);
      }
    });

    // Close the connection to the driver after the tests have completed
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('check flutter driver health', () async {
      Health health = await driver.checkHealth();
      print(health.status);
    });
  });
}
