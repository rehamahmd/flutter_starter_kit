import 'package:flutter_starter_kit/app/imports.dart';
import 'package:flutter_starter_kit/src/features/weather/domain/entities/weather_entity.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MainAppBar(
          props: MainAppBarProps(
        screenTitle: 'Weather App',
        titleWidget: ImageWidget(
          props: ImageWidgetProps(
            image: AppFlavors.logoPath,
            height: 45.h,
          ),
        ),
        showBackArrow: false,
      )),
      body: Padding(
        padding: EdgeInsets.all(AppPadding.horizontalPadding),
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: 440.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.h),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageWidget(
                        props: ImageWidgetProps(
                          image: 'assets/images/ccc.jpg',
                          borderRadius: BorderRadius.circular(12.h),
                        ),
                      ),
                    ),
                    PositionedDirectional(
                      top: 30.h,
                      start: 30.w,
                      child: AppText.primary(
                        text: 'Dubai',
                        appTextStyle: AppTextStyle.regular22White,
                      ),
                    )
                  ],
                ),
              ),
            ),
            AppSpace.vertical(20),
            SizedBox(
              height: 120.h,
              child: PageView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(15),
                        // color: AppColors.primaryColor,
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey.shade400,
                        //     blurRadius: 7,
                        //   ),
                        // ],
                        ),
                    padding: EdgeInsets.all(4),
                    child: Container(
                      height: 120.h,
                      padding: EdgeInsets.all(6.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 7,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ImageWidget(
                            props: ImageWidgetProps(
                              image: AppFlavors.logoPath,
                              height: 45.h,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.primary(
                                  text: 'Today 21/1/2025',
                                  appTextStyle: AppTextStyle.regular18Black),
                              AppSpace.vertical(10),
                              Row(
                                children: [
                                  AppText.primary(
                                      text: 'see weather',
                                      appTextStyle:
                                          AppTextStyle.regular16Royal),
                                  Icon(Icons.arrow_forward_rounded),
                                ],
                              )
                            ],
                          ),
                          AppText.primary(
                              text: '25',
                              appTextStyle: AppTextStyle.bold36Royal),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120.h,
                    margin: EdgeInsetsDirectional.only(start: 20),
                    padding: EdgeInsets.all(6.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.purple.shade400,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 7,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ImageWidget(
                          props: ImageWidgetProps(
                            image: AppFlavors.logoPath,
                            height: 45.h,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText.primary(
                                text: 'Today 21/1/2025',
                                appTextStyle: AppTextStyle.regular18White),
                            AppSpace.vertical(10),
                            Row(
                              children: [
                                AppText.primary(
                                    text: 'see weather',
                                    appTextStyle: AppTextStyle.regular16Royal),
                                Icon(Icons.arrow_forward_rounded),
                              ],
                            )
                          ],
                        ),
                        AppText.primary(
                            text: '25', appTextStyle: AppTextStyle.bold36White),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            AppSpace.vertical(30),
          ],
        ),
      ),
    );
  }
}
