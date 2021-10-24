import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:ubenwa_coding_test/view/onboarding_screen.dart';
import 'package:ubenwa_coding_test/view/otp_screen.dart';
import 'package:ubenwa_coding_test/view/phone_number_screen.dart';
import 'package:ubenwa_coding_test/view/sign_in_screen.dart';
import 'package:ubenwa_coding_test/view/sign_up_screen.dart';
import 'package:ubenwa_coding_test/view/splash_screen.dart';
import 'package:ubenwa_coding_test/view_model/base_widget_view_model.dart';
import 'package:sizer/sizer.dart';
import 'package:ubenwa_coding_test/view_model/onboarding_view_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BaseWidgetViewModel()),
        ChangeNotifierProvider(create: (context) => OnboardingViewModel()),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder:(context,orientation,deviceType) => MaterialApp(
        title: 'Ubenwa Coding Test',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
        routes: {
          OnboardingScreen.routeName: (context) => const OnboardingScreen(),
          OtpScreen.routeName: (context) => const OtpScreen(),
          PhoneNumberScreen.routeName: (context) => const PhoneNumberScreen(),
          SignInScreen.routeName: (context) => const SignInScreen(),
          SplashScreen.routeName: (context) => const SplashScreen(),
          SignUpScreen.routeName: (context) => const SignUpScreen()
        },
      ),
    );
  }
}


