import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';
import 'package:ticket_booking_app/widgets/tickets_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
            children: [
              Gap(40.h),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              Gap(20.h),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: 'Previous'),
              Gap(20.h),
              Container(
                padding: EdgeInsets.only(left: 15.w),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                margin: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: "52213 45678",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(20.h),
                    const AppLayoutBuilder(
                      sections: 15,
                      isColor: true,
                      width: 5,
                    ),
                    Gap(20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "364738 28274448",
                          secondText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: "B2SG28",
                          secondText: "Booking code",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(20.h),
                    const AppLayoutBuilder(
                      sections: 15,
                      isColor: true,
                      width: 5,
                    ),
                    Gap(20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "images/visa.png",
                                  scale: 11,
                                ),
                                Text(
                                  " *** 2463",
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            Gap(5.h),
                            Text(
                              "Payment method",
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: "\$249.99",
                          secondText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // bar code
              const SizedBox(
                height: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21.r),
                    bottomLeft: Radius.circular(21.r),
                  ),
                ),
                margin: EdgeInsets.only(left: 15.w, right: 15.w),
                padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/martinovovo',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70.h,
                    ),
                  ),
                ),
              ),
              Gap(20.h),
              Container(
                padding: EdgeInsets.only(left: 15.w),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: null,
                ),
              ),
            ],
          ),
          Positioned(
            left: 26.w,
            top: 295.h,
            child: Container(
              padding: EdgeInsets.all(3.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4.r,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: 26.w,
            top: 295.h,
            child: Container(
              padding: EdgeInsets.all(3.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4.r,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
