import '../app_config.dart';

void main() async {
  await FlutterAppConfig(
    environment: AppEnvironment.testing,
    apiBaseUrl: 'https://my-api.com',
    appName: 'Flutter-App-Testing',
    initializeCrashlytics: false,
  ).run();
}
