import 'package:flutter/services.dart';
import 'package:flutter_starter_kit/app/imports.dart';

class MainAppBarProps {
  final String screenTitle;
  final Widget? titleWidget;

  final double? appBarHeight;
  final Function? popAction;
  final Color? color;
  final Color? textIconColor;

  final bool showBackArrow;
  final Widget? bottomWidget;

  final Widget? leadingWidget;
  MainAppBarProps({
    required this.screenTitle,
    this.titleWidget,
    this.appBarHeight,
    this.popAction,
    this.color,
    this.textIconColor,
    this.showBackArrow = true,
    this.bottomWidget,
    this.leadingWidget,
  });
}

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final MainAppBarProps props;
  const MainAppBar({super.key, required this.props});
  @override
  Size get preferredSize => Size.fromHeight(props.appBarHeight != null ? props.appBarHeight! : 90.h);
  _back(BuildContext context) {
    Navigation.to(context, navigationType: NavigateType.back);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      flexibleSpace: InkWell(
        onTap: () => _back(context),
        child: Padding(
          padding: EdgeInsets.only(
            left: AppPadding.horizontalPadding,
            right: AppPadding.horizontalPadding,
            top: MediaQuery.of(context).padding.top,
          ),
          child: Container(
            margin: EdgeInsets.only(top: 20.h),
            child: Row(
              children: [
                props.titleWidget ??
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(30.h),
                      ),
                      padding: EdgeInsets.all(10.h),
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(start: 4.w),
                        child: SizedBox(
                          // width: 22.h,
                          height: 22.h,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: AppColors.whiteForeground,
                            size: 20.h,
                          ),
                        ),
                      ),
                    ),
                AppSpace.horizontal(20),
                AppText.primary(
                  text: props.screenTitle,
                  appTextStyle: AppTextStyle.regular28,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
