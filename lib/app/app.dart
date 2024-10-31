import 'package:flutter_starter_kit/app/imports.dart';
import 'routing/src/router.dart';

class App extends StatefulWidget {
  const App({super.key});
  static void setLocale(BuildContext context, String language) {
    context.findAncestorStateOfType<_AppState>()?.setLocale(Locale(language));
  }

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Key key = UniqueKey();
  String language = 'ar';
  @override
  void initState() {
    super.initState();
  }

  Future<void> setLocale(Locale value) async {
    language = value.languageCode;
    key = UniqueKey();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 900),
      splitScreenMode: true,
      builder: (context, child) {
        final route = router();
        return MaterialApp.router(
          routerDelegate: route.routerDelegate,
          routeInformationParser: route.routeInformationParser,
          routeInformationProvider: route.routeInformationProvider,
          debugShowCheckedModeBanner: false,
          localeResolutionCallback: (locale, supportedLocales) {
            for (var supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale!.languageCode) {
                return supportedLocale;
              }
            }
            return supportedLocales.first;
          },
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
              child: child!,
            );
          },
        );
      },
    );
  }
}
