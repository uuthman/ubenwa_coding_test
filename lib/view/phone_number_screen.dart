import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ubenwa_coding_test/utils/app_styles.dart';
import 'package:ubenwa_coding_test/view/otp_screen.dart';
import 'package:ubenwa_coding_test/view/widget/background/base_widget.dart';
import 'package:ubenwa_coding_test/view/widget/button/app_button.dart';
import 'package:ubenwa_coding_test/view/widget/input_field/app_phone_text_field.dart';

class PhoneNumberScreen extends StatelessWidget {
  static const routeName = 'phone-number-screen';
  const PhoneNumberScreen({Key? key}) : super(key: key);



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
          AppPhoneTextField(type: TextInputType.phone, hint: "", label: "Enter your phone #",
              phonePicker: CountryCodePicker(
                initialSelection: "NG",
                favorite: const ["NG"],
                alignLeft: false,
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                flagWidth: 5.4.w,
                enabled: false,
                onChanged: (e){

                },
                textStyle: TextStyle(
                    color: AppStyles.fontColorTwo,
                    fontFamily: AppStyles.fontPlusMedium,
                    fontSize: 9.2.sp
                ),
              )),
          SizedBox(
            height: 2.0.h,
          ),
          AppButton(buttonName: "Continue", fontColor: Colors.white, fontSize: AppStyles.fontDimenOne, mHeight: AppStyles.buttonHeightDimenOne, mWidth: AppStyles.buttonWidthDimenTwo, action: (){
            Navigator.pushNamed(context, OtpScreen.routeName);
          })
        ],
      ),
      regularWidget: Column(
        children: [
          SizedBox(
            height: 2.0.h,
          ),
          AppPhoneTextField(type: TextInputType.phone, hint: "", label: "Enter your phone #",
              phonePicker: CountryCodePicker(
                initialSelection: "NG",
                favorite: const ["NG"],
                alignLeft: false,
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                flagWidth: 5.4.w,
                enabled: false,
                onChanged: (e){

                },
                textStyle: TextStyle(
                    color: AppStyles.fontColorTwo,
                    fontFamily: AppStyles.fontPlusMedium,
                    fontSize: 9.2.sp
                ),
              )),
          SizedBox(
            height: 2.0.h,
          ),
          AppButton(buttonName: "Continue", fontColor: Colors.white, fontSize: AppStyles.fontDimenOne, mHeight: AppStyles.buttonHeightDimenOne, mWidth: AppStyles.buttonWidthDimenTwo, action: (){
            Navigator.pushNamed(context, OtpScreen.routeName);
          })
        ],
      ),
    );
  }
}
