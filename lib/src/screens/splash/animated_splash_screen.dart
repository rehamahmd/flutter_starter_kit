import 'package:flutter_starter_kit/app/imports.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnimatedSplashScreen extends HookWidget {
  const AnimatedSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplash();
  }
}

class AnimatedSplash extends HookWidget {
  const AnimatedSplash({super.key});

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(duration: const Duration(seconds: 2));
    final animationScaleController = useAnimationController(duration: const Duration(seconds: 2));

    useEffect(() {
      animationController.forward();
      animationScaleController.forward();
      return null;
    }, []);

    Animation<double> circleOffsetAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: animationScaleController, curve: Curves.easeInOut),
    );

    final animation1 = CurvedAnimation(parent: animationController, curve: const Interval(0.0, 0.5));
    final animation2 = CurvedAnimation(parent: animationController, curve: const Interval(0.5, 1.0));
    final animation3 = CurvedAnimation(parent: animationController, curve: const Interval(0.3, 0.7));
    final animation4 = CurvedAnimation(parent: animationController, curve: const Interval(0.6, 1.0));

    final slideAnimation1 = Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero).animate(animation1);
    final slideAnimation2 = Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero).animate(animation2);
    final slideAnimation3 = Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero).animate(animation3);
    final slideAnimation4 = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero).animate(animation4);

    return AnimatedBuilder(
      animation: animationScaleController,
      builder: (context, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Center(child: MyCustomPaintWidget(animationValue: circleOffsetAnimation.value)),
            Positioned(
              right: 2.w,
              top: 8.h,
              child: SlideTransition(
                position: slideAnimation1,
                child: FadeTransition(
                  opacity: animation1,
                  child: SvgPicture.asset(
                    AppIcons.pawSvg,
                    width: 70.w,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 50.w,
              top: 180.h,
              child: SlideTransition(
                position: slideAnimation2,
                child: FadeTransition(
                  opacity: animation2,
                  child: Image.asset(AppIcons.c1, width: 165.w),
                ),
              ),
            ),
            Positioned(
              right: 30.w,
              top: 250.h,
              child: SlideTransition(
                position: slideAnimation3,
                child: FadeTransition(
                  opacity: animation3,
                  child: Image.asset(AppIcons.c2, width: 150.w),
                ),
              ),
            ),
            Positioned(
              right: 50.w,
              bottom: 220.h,
              child: SlideTransition(
                position: slideAnimation4,
                child: FadeTransition(
                  opacity: animation4,
                  child: Image.asset(AppIcons.c3, width: 170.w),
                ),
              ),
            ),
            FadeTransition(
              opacity: animationController,
              child: SvgPicture.asset(AppIcons.logoSvg, width: 200.h),
            ),
          ],
        );
      },
    );
  }
}

class MyCustomPainter extends CustomPainter {
  final double animationValue;

  MyCustomPainter({required this.animationValue});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Background
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint..color = Colors.white);

    // Main circle
    final gradientPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [const Color(0xFFD3AAFB), const Color(0x007d6595).withOpacity(0)],
      ).createShader(Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: 195.5))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 155.5.w, gradientPaint);

    // Small circles
    paint.shader = null;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(407.5.w, 24.5.h), animationValue * 70.5.h, paint..color = const Color(0xFF2FB589));
    canvas.drawCircle(Offset(-15.w, 561.h), animationValue * 55.h, paint..color = const Color(0xFF632B9A));
    canvas.drawCircle(Offset(42.5.w, 73.5.h), animationValue * 13.5.h, paint..color = const Color(0xFF642C9B));
    canvas.drawCircle(Offset(140.142.w, 780.823.h), animationValue * 20.5.h, paint..color = const Color(0xFF4452C8));
    canvas.drawCircle(Offset(70.w, 640.h), animationValue * 26.h, paint..color = const Color(0xFFA73D9A));
    canvas.drawCircle(Offset(size.width, size.height), animationValue * 64.5.h, paint..color = const Color(0xffE78F44));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Change to true to repaint on animation changes
  }
}

class MyCustomPaintWidget extends StatelessWidget {
  final double animationValue;

  const MyCustomPaintWidget({super.key, required this.animationValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          size: Size(
            MediaQuery.sizeOf(context).width,
            MediaQuery.sizeOf(context).height,
          ),
          painter: MyCustomPainter(animationValue: animationValue),
        ),
      ),
    );
  }
}
