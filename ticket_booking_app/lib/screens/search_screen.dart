import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/icon_text_widget.dart';
import 'package:ticket_booking_app/widgets/tickets_tabs.dart';

import '../widgets/view_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        children: [
          Gap(40.h),
          Text(
            "What are \nyou looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35.sp),
          ),
          Gap(20.h),
          const AppTicketTabs(
            firstTab: "Airline Tickets",
            secondTab: "Hotels",
          ),
          Gap(25.h),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(20.h),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(25.h),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 18.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: const Color(0xD91130CE),
            ),
            child: Center(
              child: Text(
                "Find tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(40.h),
          const AppDoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "View all"),
          Gap(15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 410.h,
                width: size.width * .42,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/sit.jpg"),
                        ),
                      ),
                    ),
                    Gap(12.h),
                    Text(
                      "20% discount on the early booking of this flight, Don't miss out this chance.",
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * .44,
                        height: 196.h,
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(18.r),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 15.h, horizontal: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Gap(10.h),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 21.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(30.w),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18.w, color: const Color(0xFF189999)),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Gap(14.h),
                  Container(
                    width: size.width * .44,
                    height: 196.h,
                    padding:
                        EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.r),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(children: [
                      Text(
                        "Take love",
                        textAlign: TextAlign.center,
                        style: Styles.headLineStyle2.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gap(5.h),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                                text: '😍', style: TextStyle(fontSize: 30)),
                            TextSpan(
                                text: '🥰', style: TextStyle(fontSize: 40)),
                            TextSpan(text: '😍', style: TextStyle(fontSize: 30))
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
