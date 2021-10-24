import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ubenwa_coding_test/utils/app_styles.dart';
import 'package:ubenwa_coding_test/view/sign_in_screen.dart';
import 'package:ubenwa_coding_test/view/sign_up_screen.dart';
import 'package:ubenwa_coding_test/view/widget/button/app_button.dart';
import 'package:ubenwa_coding_test/view/widget/button/app_transparent_button.dart';
import 'package:ubenwa_coding_test/view_model/onboarding_view_model.dart';

class OnboardingScreen extends StatefulWidget {
  static const routeName = 'onboarding-screen';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final pageViewController = PageController();

  @swidget
  Widget _onboardingTiles({required size,required text,required subText,required onboardingImage}){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 17.0.sp,
                color: AppStyles.fontColorTwo,
                fontFamily: AppStyles.fontPlusExtraBold),
          ),

          SizedBox(
            height: 1.0.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              subText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.0.sp,
                fontFamily: AppStyles.fontPlusJakDisRegular,
                color: AppStyles.fontColorTwo,
              ),
            ),
          ),
          SizedBox(
            height: 4.0.h,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 100.w,
                height: 50.h,
                decoration:  BoxDecoration(
                    color: const Color(0xffeeeeee).withOpacity(0.5),
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    )
                ),
              ),
              SizedBox(
                width: size,
                child: Image(
                  image: AssetImage(
                    onboardingImage,
                  ),
                  fit: BoxFit.fitWidth,
                ),
              )
            ],
          ),

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 100.h,
          width: 100.w,
          decoration: AppStyles.appBackground,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 3.h),
            child: Consumer<OnboardingViewModel>(
              builder: (context,viewModel,_) =>
               Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AppTransparentButton(buttonColor: AppStyles.buttonColorOne, buttonName: "Skip", fontColor: AppStyles.fontColorOne, fontSize: AppStyles.fontDimenOne, mHeight: AppStyles.buttonHeightDimenOne, mWidth: AppStyles.buttonWidthDimenOne, action: (){Navigator.pushNamed(context, SignInScreen.routeName);})
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Expanded(
                    child: PageView.builder(
                        controller: pageViewController,
                        onPageChanged: (i){
                          viewModel.setCurrentIndex(i + 1);
                        },
                        itemCount: viewModel.items.length,
                        itemBuilder: (context,i){
                          var response = viewModel.items[i];
                          return _onboardingTiles(
                            text: response.text ?? "",
                            subText: response.subText ?? "",
                            onboardingImage: response.onboardingImage ?? "",
                            size: response.size ?? 60.w,
                          );
                    }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTransparentButton(buttonColor: AppStyles.buttonColorThree, buttonName: "Login", fontColor: AppStyles.fontColorFour, fontSize: AppStyles.fontDimenOne, mHeight: AppStyles.buttonHeightDimenOne, mWidth: AppStyles.buttonWidthDimenOne, action: (){Navigator.pushNamed(context, SignInScreen.routeName);}),
                      SmoothPageIndicator(
                        controller: pageViewController,
                        count: viewModel.items.length,
                        effect: const ExpandingDotsEffect(
                          expansionFactor: 2.0,
                          dotHeight: 10.0,
                          dotWidth: 10.0,
                          activeDotColor: Color(0xffbdbbd1),
                          paintStyle: PaintingStyle.fill,
                          strokeWidth: 1.9,
                          radius: 8,
                          spacing: 9,
                        ),
                      ),
                      viewModel.currentIndex == viewModel.items.length ? AppButton(buttonName: "SignUp", fontColor: Colors.white, fontSize: AppStyles.fontDimenOne, mHeight: AppStyles.buttonHeightDimenOne, mWidth: AppStyles.buttonWidthDimenOne, action: (){Navigator.pushNamed(context, SignUpScreen.routeName);}) :
                      AppTransparentButton(buttonColor: AppStyles.buttonColorThree, buttonName: "SignUp", fontColor: AppStyles.fontColorFour, fontSize: AppStyles.fontDimenOne, mHeight: AppStyles.buttonHeightDimenOne, mWidth: AppStyles.buttonWidthDimenOne, action: (){Navigator.pushNamed(context, SignUpScreen.routeName);}),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
