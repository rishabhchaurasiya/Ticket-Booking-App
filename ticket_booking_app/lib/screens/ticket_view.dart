import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';
import 'package:ticket_booking_app/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({required this.ticket, this.isColor, super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 155.1.h,
      child: Container(
        margin: EdgeInsets.only(right: 16.w),
        child: Column(
          children: [
            /* showing the blue part of the card/ticket */
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21.r),
                  topRight: Radius.circular(21.r),
                ),
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
              ),
              padding: EdgeInsets.all(16.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                                height: 24.h,
                                child: const AppLayoutBuilder(
                                  sections: 6,
                                  isColor: true,
                                )),
                            Center(
                              child: Transform.rotate(
                                alignment: Alignment.center,
                                angle: 1.55,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : const Color(0xFF8ACCF7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      )
                    ],
                  ),
                  Gap(3.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100.w,
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: 100.w,
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /* showing the orange part of the card/ticket */
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 20.h,
                    width: 10.w,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade200
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.r),
                          bottomRight: Radius.circular(10.r),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(12.w),
                        child: const AppLayoutBuilder(
                          sections: 16,
                          isColor: true,
                          width: 5,
                        )),
                  ),
                  SizedBox(
                    height: 20.h,
                    width: 10.w,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade200
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          bottomLeft: Radius.circular(10.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /* bottom part of the orange card/ticket*/
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 21.r : 0),
                  bottomRight: Radius.circular(isColor == null ? 21.r : 0),
                ),
                color: isColor == null ? Styles.orangeColor : Colors.white,
              ),
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, top: 10.h, bottom: 16.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // AppColumnLayout(
                      //     alignment: CrossAxisAlignment.start,
                      //     firstText: ticket['date'],
                      //     secondText: "Date"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                          Gap(5.h),
                          Text(
                            "Date",
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                          Gap(5.h),
                          Text(
                            "Departure time",
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                          Gap(5.h),
                          Text(
                            "Number",
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
