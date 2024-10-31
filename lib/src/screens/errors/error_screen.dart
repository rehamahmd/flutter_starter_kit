import 'package:flutter_starter_kit/app/imports.dart';

class ErrorScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final Function onRefresh;
  const ErrorScreen._({
    required this.title,
    this.subtitle = '',
    required this.image,
    required this.onRefresh,
  });

  factory ErrorScreen.notFound({
    required Function onRefresh,
  }) {
    return ErrorScreen._(
      title: 'Not Found',
      subtitle: '',
      image: AppIcons.error404Png,
      onRefresh: onRefresh,
    );
  }
  factory ErrorScreen.serverError({
    required Function onRefresh,
  }) {
    return ErrorScreen._(
      title: 'Server Error',
      subtitle: '',
      image: AppIcons.serverErrorPng,
      onRefresh: onRefresh,
    );
  }
  factory ErrorScreen.networkError({
    required Function onRefresh,
  }) {
    return ErrorScreen._(
      title: 'Network Error',
      subtitle: '',
      image: AppIcons.networkErrorPng,
      onRefresh: onRefresh,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppErrorWidget(
        title: title,
        subtitle: subtitle,
        image: image,
        onRefresh: onRefresh,
      ),
    );
  }
}
