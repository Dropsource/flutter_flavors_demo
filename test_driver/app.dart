import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_starter_project/app/flavors/main_testing.dart' as app;

void main() {
  // This line enables the extension
  enableFlutterDriverExtension();

  // Call the `main()` function of your app or call `runApp` with any widget you
  // are interested in testing.
  app.main();
}

// flutter drive --target=test_driver/app.dart --flavor testing
