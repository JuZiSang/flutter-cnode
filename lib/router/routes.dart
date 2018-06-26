import 'package:fluro/fluro.dart';
import './route_handlers.dart';

class Routes {
  static String root = '/';
  static String home = '/home';
  static String launch = '/launch';

  static void configureRoutes(Router router) {
    router.define(root, handler: launchHandler);
    router.define(home, handler: homeHandler);
    router.define(launch, handler: launchHandler);
  }
}
