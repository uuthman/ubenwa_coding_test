import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:ubenwa_coding_test/utils/app_styles.dart';
import 'package:ubenwa_coding_test/view/widget/card/login_card_shape_left.dart';
import 'package:ubenwa_coding_test/view/widget/card/login_card_shape_right.dart';
import 'package:ubenwa_coding_test/view_model/base_widget_view_model.dart';

class BaseWidget extends StatefulWidget {

  final double width;
  final double height;
  final bool showBase;
  final String baseText;
  final Widget clinicalWidget;
  final Widget regularWidget;
  final String headerText;

  const BaseWidget({Key? key, required this.width, required this.height, required this.baseText,required this.showBase,required this.clinicalWidget,required this.regularWidget,required this.headerText}) : super(key: key);

  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {

  @swidget
  Widget _accountTile({required Color accountColor,required Function action,required String accountName,required String accountAsset}){
    return GestureDetector(
      onTap: () => action(),
      child: Column(
        children: [
          SvgPicture.asset(
            accountAsset,
            color: accountColor,
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            accountName,
            style: TextStyle(
              color: accountColor,
              fontFamily:
              AppStyles.fontPlusExtraBold,
              fontSize: 10.sp,
            ),
          )
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
          child: Consumer<BaseWidgetViewModel>(
            builder: (context,viewModel,_) => SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 6.h,
                  ),
                   Image(
                    width: 35.w,
                    image: const AssetImage('assets/images/logo.png'),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  AnimatedCrossFade(firstChild: SizedBox(
                    height: 64.h,
                    width: 100.w,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomPaint(
                          painter: LoginCardShapeRight(),
                          child: SizedBox(
                            height: widget.height,
                            width: widget.width
                          ),
                        ),
                        CustomPaint(
                          painter: LoginCardShapeLeft(),
                          child: SizedBox(
                              height: widget.height,
                              width: widget.width,
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 8.w),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.0.h,
                                  ),
                                  Text(
                                    widget.headerText,
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontFamily:
                                      AppStyles.fontPlusExtraBold,
                                      color: AppStyles.fontColorTwo,
                                    ),
                                  ),
                                  widget.clinicalWidget,
                                  Expanded(child: Container()),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      _accountTile(accountColor: viewModel.switchUser ? AppStyles.fontColorTwo : AppStyles.fontColorFour, action: (){
                                        viewModel.setSwitchUser(true);
                                      }, accountName: "Clinical User", accountAsset: "assets/images/clinical.svg"),
                                      _accountTile(accountColor: !viewModel.switchUser ? AppStyles.fontColorTwo : AppStyles.fontColorFour, action: (){
                                        viewModel.setSwitchUser(false);
                                      }, accountName: "Regular User", accountAsset: "assets/images/regular.svg")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                ],
                              ),
                            ),

                          ),
                        ),
                      ],
                    ),
                  ), secondChild: SizedBox(
                    height: 64.h,
                    width: 100.w,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomPaint(
                          painter: LoginCardShapeLeft(),
                          child: SizedBox(
                              height: widget.height,
                              width: widget.width
                          ),
                        ),
                        CustomPaint(
                          painter: LoginCardShapeRight(),
                          child: SizedBox(
                              height: widget.height,
                              width: widget.width,
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 8.w),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.0.h,
                                  ),
                                  Text(
                                    widget.headerText,
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontFamily:
                                      AppStyles.fontPlusExtraBold,
                                      color: AppStyles.fontColorTwo,
                                    ),
                                  ),
                                  widget.regularWidget,
                                  Expanded(child: Container()),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      _accountTile(accountColor: viewModel.switchUser ? AppStyles.fontColorTwo : AppStyles.fontColorFour, action: (){
                                        viewModel.setSwitchUser(true);
                                      }, accountName: "Clinical User", accountAsset: "assets/images/clinical.svg"),
                                      _accountTile(accountColor: !viewModel.switchUser ? AppStyles.fontColorTwo : AppStyles.fontColorFour, action: (){
                                        viewModel.setSwitchUser(false);
                                      }, accountName: "Regular User", accountAsset: "assets/images/regular.svg")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), crossFadeState: viewModel.switchUser ? CrossFadeState.showFirst : CrossFadeState.showSecond, duration: const Duration(seconds: 1)),
                  widget.showBase ?
                  Column(
                    children: [
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        widget.baseText,
                        style:  TextStyle(color: const Color(0xff88879c),fontSize: 8.sp,fontFamily: AppStyles.fontPlusJakDisRegular),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/facebook.svg",
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          SvgPicture.asset(
                            "assets/images/twitter.svg",
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          SvgPicture.asset(
                            "assets/images/linkedIn.svg",
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          SvgPicture.asset(
                            "assets/images/google.svg",
                          ),
                        ],
                      )
                    ],
                  ) : const SizedBox.shrink(),
                  SizedBox(
                    height: 2.h,
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
