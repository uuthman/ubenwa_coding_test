import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class AppStyles{

   static const appBackground =  BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomRight,
        colors: [
          Color(0xfffee9dd),
          Color(0xffdbeef9),
        ],
      stops: [0.3,0.8]
    ),
  );

   //Button Colors
   static const buttonColorOne = Color(0xffdccdc1);
   static const buttonColorTwo = Color(0xff6bade4);
   static const buttonColorThree = Color(0xffbdbbd1);

   //Fonts
   static const fontPlusExtraBold = "mPlusRounded1cExtraBold";
   static const fontPlusJakDisMedium = "PlusJakartaDisplayMedium";
   static const fontPlusJakDisRegular = "PlusJakartaDisplayRegular";
   static const fontPlusBold = "mPlusRounded1cBold";
   static const fontPlusRegular = "mPlusRounded1cRegular";
   static const fontPlusMedium = "mPlusRounded1cMedium";

   //background
   static const backgroundColor = Color(0xffc5d3e5);


   //Font Colors
   static const fontColorOne =
   Color(0xffdccdc1);
   static const fontColorTwo = Color(0xff384571);
   static const fontColorThree = Color(0xff6bade4);
   static const fontColorFour = Color(0xffbdbbd1);
   static const fontColorFive = Color(0xff888796);

   //Dimens

   //Font Dimens
   static var fontDimenOne = 10.sp;

   //Space Dimens
   static var buttonWidthDimenOne = 7.w;
   static var buttonHeightDimenOne = 4.5.h;
   static var buttonWidthDimenTwo = 52.w;




}