import 'package:go_router/go_router.dart';
import 'package:flutter_starter_kit/app/imports.dart';

GoRouter router() => GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SplashScreen(),
        ),
      ],
      redirect: (context, state) {
        return null;
      },
    );

class Routes {
  static const splashScreen = '/';
  static const notFoundScreen = '/notFound';
}
