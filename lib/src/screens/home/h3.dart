// import 'package:flutter_starter_kit/app/imports.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final list = [
//       DateTime.now(),
//       DateTime.now().add(Duration(days: 1)),
//       DateTime.now().add(Duration(days: 2)),
//     ];
//     return Scaffold(
//       appBar: MainAppBar(
//           props: MainAppBarProps(
//         screenTitle: 'Weather App',
//         titleWidget: ImageWidget(
//           props: ImageWidgetProps(
//             image: AppFlavors.logoPath,
//             height: 45.h,
//           ),
//         ),
//         showBackArrow: false,
//       )),
//       body: Padding(
//         padding: EdgeInsets.all(AppPadding.horizontalPadding),
//         child: Column(
//           children: [
//             Expanded(
//               child: GestureDetector(
//                 onTap: () async {
//                   // print("Aaaaa-----------------------------------");
//                   // Logger.debug("message");
//                   // Logger.info("message");
//                   // Logger.warning("message");
//                   // Logger.error("message", Error());
//                   // Logger.trace("message", Error(), StackTrace.current);
//                   // final s = (WeatherRepository(WeatherRemoteDataSource(NetworkHelper()), WeatherLocalDataSource()));

//                   // final res = await getIt<IWeatherRepository>().getCityWeatherByDay(292223, "22");
//                   // res.fold((error) {
//                   //   Logger.warning(error);
//                   // }, (data) => Logger.debug(data));
//                   // Navigation.to(
//                   //   context,
//                   //   screenName: Routes.weatherScreen,
//                   //   navigationType: NavigateType.goNamed,
//                   //   pathParameters: {'day': "22"},
//                   // );
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => WeatherScreen(
//                               day: "22",
//                             )),
//                   );
//                 },
//                 child: Container(
//                   // height: 440.h,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(12.h),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.shade300,
//                         blurRadius: 6,
//                       ),
//                     ],
//                   ),
//                   child: Stack(
//                     fit: StackFit.expand,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: ImageWidget(
//                           props: ImageWidgetProps(
//                             image: AppIcons.cityPng,
//                             borderRadius: BorderRadius.circular(12.h),
//                           ),
//                         ),
//                       ),
//                       PositionedDirectional(
//                         top: 30.h,
//                         start: 30.w,
//                         child: AppText.primary(
//                           text: 'Dubai',
//                           appTextStyle: AppTextStyle.regular22White,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             AppSpace.vertical(20),
//             SizedBox(
//               height: 120.h,
//               child: ListView(scrollDirection: Axis.horizontal, children: [
//                 ...list.map(
//                   (e) => Container(
//                     decoration: BoxDecoration(
//                         // borderRadius: BorderRadius.circular(15),
//                         // color: AppColors.primaryColor,
//                         // boxShadow: [
//                         //   BoxShadow(
//                         //     color: Colors.grey.shade400,
//                         //     blurRadius: 7,
//                         //   ),
//                         // ],
//                         ),
//                     padding: EdgeInsets.all(4),
//                     child: Container(
//                       height: 120.h,
//                       width: MediaQuery.sizeOf(context).width - 110,
//                       padding: EdgeInsets.all(6.h),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.shade300,
//                             blurRadius: 4,
//                           ),
//                         ],
//                       ),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           ImageWidget(
//                             props: ImageWidgetProps(
//                               image: AppFlavors.logoPath,
//                               height: 45.h,
//                             ),
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               AppText.primary(
//                                 text: DateTimeUtils.getDayName(e),
//                                 appTextStyle: AppTextStyle.regular18Black,
//                               ),
//                               AppSpace.vertical(10),
//                               Row(
//                                 children: [
//                                   AppText.primary(text: 'see weather', appTextStyle: AppTextStyle.regular16Royal),
//                                   Icon(Icons.arrow_forward_rounded),
//                                 ],
//                               )
//                             ],
//                           ),
//                           AppText.primary(
//                               text: DateTimeUtils.getDayFromDate(e.toString())?.toString() ?? '',
//                               appTextStyle: AppTextStyle.bold36Royal),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ]),
//             ),
//             AppSpace.vertical(30),
//           ],
//         ),
//       ),
//     );
//   }
// }
