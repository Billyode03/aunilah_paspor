import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:aunilah_paspor/utils/constants/image_constant.dart';
import 'package:aunilah_paspor/view/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: Colors.white,
      onInit: () {
        debugPrint("On Init");
      },
      onEnd: () {
        debugPrint("On End");
      },
      childWidget: SizedBox(
        height: 300,
        width: 300,
        child: Image.asset(
          ImageConstant.mainLogo,
          height: 120,
          width: 120,
        ),
      ),
      duration: const Duration(milliseconds: 3000),
      onAnimationEnd: () => debugPrint("On Fade In End"),
      nextScreen: const DashboardScreen(),
    );
  }
}
