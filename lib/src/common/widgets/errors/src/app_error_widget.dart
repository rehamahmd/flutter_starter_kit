import 'package:flutter_starter_kit/app/imports.dart';

class AppErrorWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final Function onRefresh;
  const AppErrorWidget({
    super.key,
    required this.title,
    this.subtitle = '',
    required this.image,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              AppSpace.vertical(50),
              SizedBox(
                height: 240.h,
                child: ImageWidget(
                  props: ImageWidgetProps(
                    image: image,
                  ),
                ),
              ),
              AppSpace.vertical(34),
              AppText.primary(text: title ?? 'خطأ بالشبكة', appTextStyle: AppTextStyle.bold36Royal),
              AppText.primary(text: subtitle ?? 'برجاء إعادة تحميل الصفحة', appTextStyle: AppTextStyle.regular24Grey),
            ],
          ),
          PrimaryButton.icon(
            onPress: () {
              onRefresh();
            },
            svgIconProps: SvgIconProps(svgIcon: AppIcons.refreshIcon),
            buttonText: 'إعادة تحميل الصفحة',
          )
        ],
      ),
    );
  }
}
