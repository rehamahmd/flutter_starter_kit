// * Primary & Secondary based on FontFamily  * //
import 'package:flutter_starter_kit/app/imports.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  const AppText._(
    this.text, {
    this.textStyle,
  });

  factory AppText.primary({
    required String text,
    AppTextStyle? appTextStyle,
  }) {
    return AppText._(
      text,
      textStyle: appTextStyle?.primaryStyle,
    );
  }
  factory AppText.secondary({
    required String text,
    AppTextStyle? appTextStyle,
  }) {
    return AppText._(
      text,
      textStyle: appTextStyle?.secondaryStyle,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}
