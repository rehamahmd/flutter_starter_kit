import 'package:flutter_starter_kit/app/imports.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        return switch (state) {
          WeatherLoading() => const LoadingWidget(),
          WeatherLoaded() => Container(),
          WeatherError() => switch (state.error) {
              NetworkError() => ErrorScreen.networkError(onRefresh: () => print(context)),
              UnAuthorizedError() => ErrorScreen.serverError(onRefresh: () => print(context)),
              _ => ErrorScreen.serverError(onRefresh: () => print(context))
            },
          _ => const SizedBox()
        };
      },
    );
  }
}
