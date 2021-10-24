import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ubenwa_coding_test/utils/app_styles.dart';

class AppTransparentButton extends StatelessWidget {

  final String buttonName;
  final Color buttonColor;
  final double fontSize;
  final Color fontColor;
  final double mHeight;
  final double mWidth;
  final Function action;


  const AppTransparentButton({Key? key,required this.buttonColor,required this.buttonName,required this.fontColor,required this.fontSize,required this.mHeight,required this.mWidth,required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => action(),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        minimumSize: Size(mWidth, mHeight),
        side: BorderSide(
          width: 1.5,
          color: buttonColor,
        ),
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
    );
  }
}
