import 'package:go_router/go_router.dart';
import 'package:lichess_prototype/locator.dart';
import 'package:lichess_prototype/pages/home_page.dart';
import 'package:lichess_prototype/pages/profile_page.dart';

class Routes {
  static const home = '/';
  static const profile = '/profile';

  static userProfile(String username) => '$profile/$username';
}

GoRouter buildRouter() {
  return GoRouter(
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (_, __) => const HomePage(),
      ),
      GoRoute(
        path: Routes.userProfile(':username'),
        builder: (_, state) => ProfilePage(username: state.params['username']!),
      ),
      GoRoute(
        path: Routes.profile,
        builder: (_, __) => ProfilePage(username: auth().state.user!.username),
        redirect: _needAuthRedirect,
      ),
    ],
  );
}

String? _needAuthRedirect(GoRouterState state) =>
    auth().state.loggedIn ? null : Routes.home;

typedef RedirectBuilder = String? Function(GoRouterState);
