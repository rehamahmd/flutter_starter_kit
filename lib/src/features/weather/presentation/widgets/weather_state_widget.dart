import 'package:flutter_starter_kit/app/imports.dart';

import '../../domain/entities/weather_entity.dart';

class WeatherStateWidget extends StatelessWidget {
  final WeatherEntity weather;
  const WeatherStateWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    final weatherType = weather.weatherType;
    return Container(
      color: weatherType.color,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(start: AppPadding.horizontalPadding),
              child: AppText.primary(
                text: weatherType.uiText,
                appTextStyle: AppTextStyle.regular28White,
              ),
            ),
            SizedBox(
              height: ScreenUtil().screenHeight * .55,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageWidget(
                    props: ImageWidgetProps(
                      image: weatherType.icon,
                      width: 330.w,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start: AppPadding.horizontalPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AppText.primary(
                          text: "Dubai",
                          appTextStyle: AppTextStyle.regular55White,
                          lineHeight: .4,
                        ),
                        Center(
                          child: Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              AppText.primary(
                                text: "${weather.temp?.toStringAsFixed(0) ?? ''} ",
                                style: AppTextStyle.regular14White.primaryStyle?.copyWith(fontSize: 90.sp),
                              ),
                              PositionedDirectional(
                                top: 5,
                                end: 10,
                                child: AppText.primary(
                                  text: "o",
                                  appTextStyle: AppTextStyle.regular28White,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 115.w,
                        height: 75.h,
                        child: Card(
                          margin: EdgeInsets.zero,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.h)),
                          child: Padding(
                            padding: EdgeInsets.all(8.0.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AppText.primary(
                                  text: "Wind",
                                  appTextStyle: AppTextStyle.regular14Grey,
                                ),
                                AppText.primary(
                                  text: "${weather.windSpeed.toString()}km/h",
                                  appTextStyle: AppTextStyle.bold18,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 85.w,
                        height: 75.h,
                        child: Card(
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.h)),
                          child: Padding(
                            padding: EdgeInsets.all(8.0.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AppText.primary(
                                  text: "Humidity",
                                  appTextStyle: AppTextStyle.regular14Grey,
                                ),
                                AppText.primary(
                                  text: "${weather.humidity.toString()}%",
                                  appTextStyle: AppTextStyle.bold18,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
