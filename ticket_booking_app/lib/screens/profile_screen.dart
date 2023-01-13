import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        children: [
          Gap(40.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86.h,
                width: 86.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  image: const DecorationImage(
                    image: AssetImage("images/img_1.png"),
                  ),
                ),
              ),
              Gap(10.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headLineStyle1,
                  ),
                  Gap(2.h),
                  Text(
                    "New-York",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                      fontSize: 14.sp,
                    ),
                  ),
                  Gap(8.h),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                      color: const Color(0xFFFEF4F3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3.w),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(5.h),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        ),
                        Gap(5.h),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("u are tapped");
                    },
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Gap(8.h),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(8.h),
          Stack(
            children: [
              Container(
                height: 90.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18.r),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(30.w),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18.w,
                      color: const Color(0xFF264CD2),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25.r,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27.sp,
                      ),
                    ),
                    Gap(12.h),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You'v got a new award",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 19.sp,
                          ),
                        ),
                        Text(
                          "You'v 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(.9),
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(25.h),
          Text(
            "Accumulated miles",
            style: Styles.headLineStyle2,
          ),
          Gap(20.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.r),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1.sp,
                  spreadRadius: 1.sp,
                ),
              ],
            ),
            child: Column(
              children: [
                Gap(15.h),
                Text(
                  "192802",
                  style: TextStyle(
                    fontSize: 45.sp,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16.sp),
                    ),
                    Text(
                      "11 June 2022",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16.sp),
                    ),
                  ],
                ),
                Gap(4.h),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firstText: "23 042",
                      secondText: "Miles",
                      isColor: false,
                    ),
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      firstText: "Airline CO",
                      secondText: "Received from",
                      isColor: false,
                    )
                  ],
                ),
                Gap(12.h),
                const AppLayoutBuilder(
                  sections: 12,
                  isColor: false,
                ),
                Gap(12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firstText: "24",
                      secondText: "Miles",
                      isColor: false,
                    ),
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      firstText: "McDoanal's",
                      secondText: "Received from",
                      isColor: false,
                    )
                  ],
                ),
                Gap(12.h),
                const AppLayoutBuilder(
                  sections: 12,
                  isColor: false,
                ),
                Gap(12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firstText: "52340",
                      secondText: "Miles",
                      isColor: false,
                    ),
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      firstText: "Akash Airline",
                      secondText: "Received from",
                      isColor: false,
                    )
                  ],
                ),
                Gap(12.h),
              ],
            ),
          ),
          Gap(25.h),
          InkWell(
            onTap: () {
              print("you are tapped");
            },
            child: Center(
              child: Text(
                "How to get more miles",
                style: Styles.textStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Styles.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
