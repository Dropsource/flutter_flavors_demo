import '../app_config.dart';

void main() async {
  await FlutterAppConfig(
    environment: AppEnvironment.production,
    apiBaseUrl: 'https://my-api.com',
    appName: 'Flutter-App',
    initializeCrashlytics: true,
  ).run();
}
