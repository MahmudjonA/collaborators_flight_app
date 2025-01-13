import 'package:flight_booking_app/core/arrow_back_black.dart';
import 'package:flight_booking_app/core/constants/color.dart';
import 'package:flutter/material.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.whiteTextColor,
      appBar: AppBar(
        backgroundColor: CustomColor.whiteTextColor,
        leading: const ArrowBackBlack(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const Text(
              "Transaction Details",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 24),
            Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(8),
              color: CustomColor.whiteTextColor,
              child: Container(
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image(
                            image:
                                AssetImage("assets/icons/rectangle_grey.png"),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Southwest Airlines",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Text(
                            "Executive",
                            style: TextStyle(
                                fontSize: 12, color: CustomColor.greyColor),
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "GTH",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "14.00",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: CustomColor.greyColor,
                                ),
                              )
                            ],
                          ),
                          Image(
                            image: AssetImage("assets/icons/light_plane.png"),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "KHQ",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "07.15",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: CustomColor.greyColor,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Image(
                            image: AssetImage("assets/icons/mini_person.png"),
                          ),
                          SizedBox(width: 4),
                          Text("2 Person",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500)),
                          Image(image: AssetImage("assets/icons/rating.png")),
                          SizedBox(width: 4),
                          Text("Premium",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500)),
                          Spacer(),
                          Text("IDR 350.000",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500)),
                          Text("/Pax",
                              style: TextStyle(
                                  fontSize: 12, color: CustomColor.greyColor)),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Image(
                              image: AssetImage(
                                  "assets/icons/circle_lightgrey.png")),
                          SizedBox(width: 8),
                          Text("Matt Murdock",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500)),
                          Spacer(),
                          Text(
                            "Edit",
                            style: TextStyle(
                                fontSize: 12, color: CustomColor.mainColor),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Status",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.greyColor),
                ),
                Text(
                  "Success",
                  style: TextStyle(
                      fontSize: 12,
                      color: CustomColor.mainColor,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Invoice",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.greyColor),
                ),
                Text(
                  "INV23124131332",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transaction Date",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.greyColor),
                ),
                Text(
                  "Wed, 18 Oct 2022",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Method",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.greyColor),
                ),
                Text(
                  "Paytren",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: CustomColor.lightGrey)
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "1. Matt Murdock",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: CustomColor.greyColor),
                        ),
                        Text(
                          "Rp. 210.000",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: CustomColor.greyColor),
                        ),
                        Text(
                          "Rp. 210.000",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                color: Color.fromRGBO(252, 233, 233, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Refund or Reschedule Ticket", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(224, 30, 30, 1)),),
                  SizedBox(width: 8),
                  Image(image: AssetImage("assets/icons/arrow_circle_right.png")),
                ],
              ),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: CustomColor.mainColor,
              ),
              child: Text("Enter", style: TextStyle(color: CustomColor.whiteTextColor, fontSize: 16, fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
