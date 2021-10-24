import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ubenwa_coding_test/utils/app_styles.dart';
import 'package:ubenwa_coding_test/view/widget/background/base_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:ubenwa_coding_test/view/widget/button/app_button.dart';

class OtpScreen extends StatefulWidget {
  static const routeName = 'otp-screen';
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  @swidget
  Widget _otpField(){
    return PinCodeTextField(
      appContext: context,
      length: 4,
      onChanged: (val){},
      enableActiveFill: true,
      boxShadows: const [
        BoxShadow(
            color: Color.fromRGBO(249, 146, 59, 0.4), blurRadius: 4)
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      cursorHeight: 2.h,
      textStyle: TextStyle(
        color: AppStyles.fontColorTwo,
        fontFamily: AppStyles.fontPlusMedium,
        fontSize: 10.sp,
      ),
      pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(10),
          fieldHeight: 5.6.h,
          fieldWidth: 9.w,
          activeFillColor: AppStyles.backgroundColor,
          inactiveFillColor: AppStyles.backgroundColor,
          selectedFillColor: AppStyles.backgroundColor,
          activeColor: Colors.white,
          selectedColor: Colors.white,
          inactiveColor: Colors.white,
          borderWidth: 4,
          fieldOuterPadding: EdgeInsets.symmetric(horizontal: 1.w)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      width: 85.w,
      height: 57.h,
      showBase: false,
      headerText: "Verification",
      baseText: "",
      clinicalWidget: Column(
        children: [
          SizedBox(
            height: 2.0.h,
          ),
          const Text(
            "Enter the 4 digit code sent via \n SMS to this number",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppStyles.fontColorTwo,
                fontFamily: AppStyles.fontPlusMedium
            ),
          ),
          SizedBox(
            height: 2.0.h,
          ),
          _otpField(),
          SizedBox(
            height: 2.0.h,
          ),
          AppButton(buttonName: "Continue", fontColor: Colors.white, fontSize: AppStyles.fontDimenOne, mHeight: AppStyles.buttonHeightDimenOne, mWidth: AppStyles.buttonWidthDimenTwo, action: (){})
        ],
      ),
      regularWidget: Column(
        children: [
          SizedBox(
            height: 2.0.h,
          ),
          const Text(
            "Enter the 4 digit code sent via \n SMS to this number",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppStyles.fontColorTwo,
                fontFamily: AppStyles.fontPlusMedium
            ),
          ),
          SizedBox(
            height: 2.0.h,
          ),
          _otpField(),
          SizedBox(
            height: 2.0.h,
          ),
          AppButton(buttonName: "Continue", fontColor: Colors.white, fontSize: AppStyles.fontDimenOne, mHeight: AppStyles.buttonHeightDimenOne, mWidth: AppStyles.buttonWidthDimenTwo, action: (){})
        ],
      ),
    );
  }
}
