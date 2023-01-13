import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {required this.firstTab, required this.secondTab, super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: 7.h),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(50.r)),
                color: Colors.white,
              ),
              child: Center(child: Text(firstTab)),
            ),
            Container(
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: 7.h),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(50.r)),
                color: Colors.transparent,
              ),
              child: Center(child: Text(secondTab)),
            ),
          ],
        ),
      ),
    );
  }
}
