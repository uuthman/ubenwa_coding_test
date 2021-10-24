import 'package:flutter/material.dart';
import 'package:ubenwa_coding_test/utils/app_styles.dart';
import 'package:ubenwa_coding_test/view/phone_number_screen.dart';
import 'package:ubenwa_coding_test/view/widget/background/base_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:ubenwa_coding_test/view/widget/button/app_button.dart';
import 'package:ubenwa_coding_test/view/widget/input_field/app_text_field.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = 'sign-up-screen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return  BaseWidget(
      width: 85.w,
      height: 61.h,
      baseText: "or signup with",
      showBase: true,
      headerText: "SignUp",
      clinicalWidget: Column(
        children: [
          SizedBox(
            height: 2.0.h,
          ),
          const AppTextField(type: TextInputType.name, hint: "", label: "Username", isCenter: false),
          const AppTextField(type: TextInputType.emailAddress, hint: "", label: "Email", isCenter: false),
          const AppTextField(type: TextInputType.visiblePassword, hint: "", label: "Password", isCenter: false),
          SizedBox(
            height: 1.0.h,
          ),
          Text(
            "By entering your details, your are agreeing to our Terms of Service and Privacy Policy. Thanks!",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 9.0.sp,
                color: AppStyles.fontColorFive),
          ),
          SizedBox(
            height: 1.0.h,
          ),
          AppButton(buttonName: "Continue", fontColor: Colors.white, fontSize: AppStyles.fontDimenOne, mHeight: AppStyles.buttonHeightDimenOne, mWidth: AppStyles.buttonWidthDimenTwo, action: (){
            Navigator.pushNamed(context, PhoneNumberScreen.routeName);
          })
        ],
      ),
      regularWidget: Column(
        children: [
          SizedBox(
            height: 2.0.h,
          ),
          const AppTextField(type: TextInputType.name, hint: "", label: "Username", isCenter: false),
          const AppTextField(type: TextInputType.emailAddress, hint: "", label: "Email", isCenter: false),
          const AppTextField(type: TextInputType.visiblePassword, hint: "", label: "Password", isCenter: false),
          SizedBox(
            height: 1.0.h,
          ),
          Text(
            "By entering your details, your are agreeing to our Terms of Service and Privacy Policy. Thanks!",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 9.0.sp,
                color: AppStyles.fontColorFive),
          ),
          SizedBox(
            height: 1.0.h,
          ),
          AppButton(buttonName: "Continue", fontColor: Colors.white, fontSize: AppStyles.fontDimenOne, mHeight: AppStyles.buttonHeightDimenOne, mWidth: AppStyles.buttonWidthDimenTwo, action: (){
            Navigator.pushNamed(context, PhoneNumberScreen.routeName);
          })
        ],
      ),
    );
  }
}
