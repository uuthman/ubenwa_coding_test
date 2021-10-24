import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ubenwa_coding_test/utils/app_styles.dart';

class AppButton extends StatelessWidget {
  final String buttonName;
  final double fontSize;
  final Color fontColor;
  final double mHeight;
  final double mWidth;
  final Function action;


  const AppButton({Key? key,required this.buttonName,required this.fontColor,required this.fontSize,required this.mHeight,required this.mWidth,required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mHeight,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xff77a9e0),
          Color(0xff45b8f0)
        ]),
        borderRadius: BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      child: TextButton(
        onPressed: () => action(),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          minimumSize: Size(mWidth, mHeight),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
        ),
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: fontSize,
            color: fontColor,
            fontFamily: AppStyles.fontPlusJakDisMedium
          ),
        ),
      ),
    );
  }
}
