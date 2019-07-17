import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class SharedState extends ChangeNotifier {
  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  void dispose() {
    super.dispose();
  }
}
