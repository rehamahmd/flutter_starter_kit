import 'package:flutter_starter_kit/app/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(
            props: MainAppBarProps(
          screenTitle: 'Weather App',
          titleWidget: Row(
            children: [
              ImageWidget(
                props:
                    ImageWidgetProps(image: AppFlavors.logoPath, height: 45.h),
              ),
            ],
          ),
          showBackArrow: false,
          // leadingWidget:
        )),
        body: Column(
          children: [
            Container(),
          ],
        ));
  }
}
