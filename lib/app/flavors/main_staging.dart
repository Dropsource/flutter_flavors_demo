import '../app_config.dart';

void main() async {
  await FlutterAppConfig(
    environment: AppEnvironment.staging,
    apiBaseUrl: 'https://my-api.com',
    appName: 'Flutter-App-QA',
    initializeCrashlytics: true,
  ).run();
}
