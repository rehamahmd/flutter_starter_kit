import 'package:flutter_starter_kit/app/routing/src/router.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_starter_kit/app/imports.dart';

class NavigateType {
  static const pushNamed = 'pushNamed';
  static const goNamed = 'goNamed';
  static const back = 'back';
  static const root = 'root';
}

class Navigation {
  static void to(
    BuildContext context, {
    String? screenName,
    String navigationType = NavigateType.pushNamed,
    Map<String, String> pathParameters = const <String, String>{},
  }) {
    try {
      switch (navigationType) {
        case NavigateType.pushNamed:
          _pushNamed(context, screenName, pathParameters: pathParameters);
          break;
        case NavigateType.goNamed:
          _goNamed(context, screenName, pathParameters: pathParameters);
          break;
        case NavigateType.back:
          _back(context);
          break;
        case NavigateType.root:
          _root(context);
          break;
        default:
          _root(context);
      }
    } catch (e) {
      _goNamed(context, Routes.notFoundScreen);
    }
  }

  static _pushNamed(
    BuildContext context,
    String? screenName, {
    Map<String, String> pathParameters = const <String, String>{},
  }) {
    if (screenName == null) throw Exception('Screen Name is NULL??!');
    context.pushNamed(screenName, pathParameters: pathParameters);
  }

  static _goNamed(
    BuildContext context,
    String? screenName, {
    Map<String, String> pathParameters = const <String, String>{},
  }) {
    if (screenName == null) throw Exception('Screen Name is NULL??!');
    context.goNamed(screenName, pathParameters: pathParameters);
  }

  static _back(BuildContext context) {
    if (Navigator.canPop(context)) context.pop();
  }

  static _root(BuildContext context) {
    while (Navigator.canPop(context)) {
      context.pop();
    }
  }
}
