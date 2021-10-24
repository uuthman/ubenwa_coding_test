import 'package:flutter/material.dart';
import 'package:ubenwa_coding_test/utils/app_styles.dart';
import 'package:ubenwa_coding_test/view/widget/background/base_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:ubenwa_coding_test/view/widget/button/app_button.dart';
import 'package:ubenwa_coding_test/view/widget/input_field/app_text_field.dart';

class SignInScreen extends StatefulWidget {
  static const routeName = 'sign-in-screen';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
        width: 85.w,
        height: 57.h,
        showBase: true,
        headerText: "Login",
        baseText: "Login with",
        clinicalWidget: Column(
          children: [
            SizedBox(
              height: 2.0.h,
            ),
            const AppTextField(type: TextInputType.name, hint: "", label: "Username", isCenter: false),
            const AppTextField(type: TextInputType.emailAddress, hint: "", label: "Email", isCenter: false),
            SizedBox(
              height: 1.0.h,
            ),
            Text(
              'Forgot password?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 9.0.sp,
                  color: AppStyles.fontColorFive),
            ),
            SizedBox(
              height: 1.0.h,
            ),
            AppButton(buttonName: "Continue", fontColor: Colors.white, fontSize: AppStyles.fontDimenOne, mHeight: AppStyles.buttonHeightDimenOne, mWidth: AppStyles.buttonWidthDimenTwo, action: (){})
          ],
        ),
       regularWidget: Column(
         children: [
           SizedBox(
             height: 2.0.h,
           ),
           const AppTextField(type: TextInputType.name, hint: "", label: "Username", isCenter: false),
           const AppTextField(type: TextInputType.emailAddress, hint: "", label: "Email", isCenter: false),
           SizedBox(
             height: 1.0.h,
           ),
           Text(
             "Forgot password?",
             textAlign: TextAlign.center,
             style: TextStyle(
                 fontSize: 9.0.sp,
                 color: AppStyles.fontColorFive),
           ),
           SizedBox(
             height: 1.0.h,
           ),
           AppButton(buttonName: "Continue", fontColor: Colors.white, fontSize: AppStyles.fontDimenOne, mHeight: AppStyles.buttonHeightDimenOne, mWidth: AppStyles.buttonWidthDimenTwo, action: (){})
         ],
       ),
    );
  }
}
