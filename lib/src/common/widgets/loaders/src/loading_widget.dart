import 'package:flutter_starter_kit/app/imports.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 50.w,
                height: 50.w,
                child: CircularProgressIndicator(
                  color: const Color(0xffBABABA),
                  strokeWidth: 4.w,
                ),
              ),
              SvgIcon(
                props: SvgIconProps(svgIcon: AppIcons.pawPurpleSvg, width: 40.w),
              )
            ],
          ),
          AppSpace.vertical(20),
          AppText.primary(
            text: 'جاري التحميل',
            appTextStyle: AppTextStyle.bold36Royal,
          ),
          AppText.secondary(
            text: 'برجاء الانتظار',
            appTextStyle: AppTextStyle.regular24Grey,
          ),
        ],
      ),
    );
  }
}
