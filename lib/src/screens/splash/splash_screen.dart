import 'package:flutter_starter_kit/app/imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3)).then((value) {
        if (context.mounted) {}
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemUtils.setAppStatusBarThemeForAndroid(splash: true);
    return const Scaffold(body: AnimatedLogo());
  }
}

class AnimatedLogo extends HookWidget {
  const AnimatedLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(seconds: 2),
    )..repeat(reverse: false);

    final opacityAnimation = useAnimation(Tween<double>(begin: 0.5, end: 1.0)
        .animate(CurvedAnimation(parent: animationController, curve: Curves.easeIn)));

    final scaleAnimation = useAnimation(Tween<double>(begin: 0.5, end: 1.0)
        .animate(CurvedAnimation(parent: animationController, curve: Curves.easeInOut)));

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: opacityAnimation,
            child: Transform.scale(
              scale: scaleAnimation,
              child: Image.asset(AppIcons.logoPng, width: 230),
            ),
          ),
          const SizedBox(height: 10),
          ScaleTransition(
            scale: animationController,
            child: Container(
              width: 250,
              height: 75,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF8F7DC2), Color(0xFF03B7F2)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Text(
                  'Splash',
                  style: AppTextStyle.regular22White.primaryStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
