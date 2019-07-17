import '../app_config.dart';

void main() async {
  await FlutterAppConfig(
    environment: AppEnvironment.development,
    apiBaseUrl: 'https://my-api.com',
    appName: 'Flutter-App-Dev',
    initializeCrashlytics: true,
  ).run();
}
