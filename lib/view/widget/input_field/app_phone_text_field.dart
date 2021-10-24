import 'package:flutter/material.dart';
import 'package:ubenwa_coding_test/utils/app_styles.dart';
import 'package:sizer/sizer.dart';

class AppPhoneTextField extends StatefulWidget {

  final TextInputType type;
  final String hint;
  final String label;
  final Widget phonePicker;

  const AppPhoneTextField({Key? key,required this.type,required this.hint,required this.label,required this.phonePicker}) : super(key: key);

  @override
  _AppPhoneTextFieldState createState() => _AppPhoneTextFieldState();
}

class _AppPhoneTextFieldState extends State<AppPhoneTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.label,
          style: const TextStyle(
              color: AppStyles.fontColorTwo,
              fontFamily: AppStyles.fontPlusMedium
          ),
        ),
        SizedBox(
          height: 1.0.h,
        ),
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: 5.6.h,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(22.0)),
                  border: Border.all(color: Colors.white, width: 4),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(249, 146, 59, 0.4), blurRadius: 4)
                  ]),
              child: TextFormField(
                keyboardType: widget.type,
                style: TextStyle(
                  color: AppStyles.fontColorTwo,
                  fontFamily: AppStyles.fontPlusMedium,
                  fontSize: 10.sp,
                ),
                decoration: InputDecoration(
                  prefix: SizedBox(width: 21.w,),
                  contentPadding: EdgeInsets.only(bottom: 1.h),
                  hintText: widget.hint,
                  hintStyle: TextStyle(
                      color: AppStyles.fontColorFour,
                      fontFamily: AppStyles.fontPlusBold,
                      fontSize: 10.sp),
                  fillColor: AppStyles.backgroundColor,
                  filled: true,
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(22.0)),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(22.0)),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Positioned(

                child: widget.phonePicker
            )
          ],
        )

      ],
    );
  }
}
