import 'package:flutter_starter_kit/app/imports.dart';

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
            Container(
              height: 150.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width / 3.7,
                    height: 150.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.whiteForeground,
                        elevation: 2,
                        shadowColor: Colors.grey.shade200,
                      ),
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: ImageWidget(
                              props: ImageWidgetProps(
                                image: 'assets/images/clear-sky.png',
                                height: 85.h,
                              ),
                            ),
                          ),
                          Center(
                            child: AppText.secondary(
                              text: 'Today',
                              appTextStyle: AppTextStyle.bold20Royal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 3.7,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.whiteForeground,
                        elevation: 2,
                        shadowColor: Colors.grey.shade200,
                      ),
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: ImageWidget(
                              props: ImageWidgetProps(
                                image: 'assets/images/sun.png',
                                height: 85.h,
                              ),
                            ),
                          ),
                          Center(
                            child: AppText.secondary(
                                text: 'Today',
                                appTextStyle: AppTextStyle.bold20Royal),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 3.7,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.whiteForeground,
                        elevation: 2,
                        shadowColor: Colors.grey.shade200,
                      ),
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: ImageWidget(
                              props: ImageWidgetProps(
                                image: 'assets/images/clouds.png',
                                height: 85.h,
                              ),
                            ),
                          ),
                          Center(
                            child: AppText.secondary(
                                text: 'Today',
                                appTextStyle: AppTextStyle.bold20Royal),
                          ),
                        ],
                      ),
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
