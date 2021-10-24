import 'package:sizer/sizer.dart';
class Onboarding{

  String? text;
  String? subText;
  String? onboardingImage;
  double? size;

  Onboarding({this.text,this.subText,this.onboardingImage,this.size});

}

List<Onboarding> onboardingItems(){
  return [
    Onboarding(text: "Cutie baby",subText: "By entering your details, you are agreeing to our Terms of Service and Privacy Policy.Thanks!",onboardingImage: "assets/images/cutie_baby.png",size: 60.w),
    Onboarding(text: "Record Cry",subText: "By entering your details, you are agreeing to our Terms of Service and Privacy Policy.Thanks!",onboardingImage: "assets/images/record_cry.png",size: 60.w),
    Onboarding(text: "Screening Cry",subText: "By entering your details, you are agreeing to our Terms of Service and Privacy Policy.Thanks!",onboardingImage: "assets/images/screening_cry.png",size: 70.w)
  ];
}