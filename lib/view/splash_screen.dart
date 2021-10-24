import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:ubenwa_coding_test/utils/app_styles.dart';
import 'package:ubenwa_coding_test/view/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = 'splash-screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushNamed(context, OnboardingScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            height: 100.h,
            width: 100.w,
            decoration: AppStyles.appBackground,
            child: const Center(
              child: Image(
                image: AssetImage('assets/logo.png'),
              ),
            ),
      )),
    );
  }
}
