import 'package:flutter/material.dart';
import 'package:ubenwa_coding_test/utils/app_styles.dart';
import 'package:sizer/sizer.dart';

class AppTextField extends StatelessWidget {
  final TextInputType type;
  final String hint;
  final String label;
  final bool isCenter;

  const AppTextField({Key? key,required this.type,required this.hint,required this.label,required this.isCenter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: isCenter ? Center(
            child: Text(
              label,
              style: const TextStyle(
                color: AppStyles.fontColorTwo,
                fontFamily: AppStyles.fontPlusMedium
              ),
            )
          ) : Text(
            label,
            style: const TextStyle(
                color: AppStyles.fontColorTwo,
                fontFamily: AppStyles.fontPlusMedium
            ),
          )
        ),
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
            keyboardType: type,
            style: TextStyle(
              color: AppStyles.fontColorTwo,
              fontFamily: AppStyles.fontPlusMedium,
              fontSize: 10.sp,
            ),
            decoration: InputDecoration(
              contentPadding:
              const EdgeInsets.symmetric(vertical: 3.0, horizontal: 20.0),
              hintText: hint,
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
      ],
    );
  }
}
