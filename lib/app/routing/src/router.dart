import 'package:go_router/go_router.dart';
import 'package:flutter_starter_kit/app/imports.dart';

GoRouter router() => GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const Scaffold(),
        ),
      ],
      redirect: (context, state) {
        return null;
      },
    );

class Routes {
  static const splashScreen = '/';
  static const loginScreen = '/login';
  static const registerScreen = '/register';
  static const otpScreen = '/otp';
  static const languageScreen = '/language';
  static const homeScreen = '/home';
  static const notFoundScreen = '/notFound';
}
