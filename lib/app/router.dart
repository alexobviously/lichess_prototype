import 'package:go_router/go_router.dart';
import 'package:lichess_prototype/pages/home_page.dart';

class Routes {
  static const home = '/';
}

GoRouter buildRouter() {
  return GoRouter(
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (_, __) => const HomePage(),
      ),
    ],
  );
}
