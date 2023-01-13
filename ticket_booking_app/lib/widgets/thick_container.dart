import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final bool? isColor;
  const ThickContainer({this.isColor, super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Container(
      padding: EdgeInsets.all(3.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
            width: 2.5.r,
            color: isColor == null ? Colors.white : const Color(0xFF8ACCF7)),
      ),
    );
  }
}
