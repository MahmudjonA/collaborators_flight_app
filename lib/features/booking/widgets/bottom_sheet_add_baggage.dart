import 'package:flight_booking_app/core/constants/color.dart';
import 'package:flight_booking_app/features/booking/widgets/choose_weigh.dart';
import 'package:flutter/material.dart';

class BottomSheetAddBaggage extends StatefulWidget {
  const BottomSheetAddBaggage({super.key});

  @override
  State<BottomSheetAddBaggage> createState() => _BottomSheetAddBaggageState();
}

class _BottomSheetAddBaggageState extends State<BottomSheetAddBaggage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: 375,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
            color: CustomColor.whiteTextColor),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 40, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Add Baggage",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "1. Matt Murdock",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              const WeightSelection(),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(13, 22, 52, 0.05),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "1. Matt Murdock",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: CustomColor.greyColor,
                            ),
                          ),
                          Text(
                            "Rp. 210.000",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: CustomColor.greyColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total ",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: CustomColor.greyColor,
                            ),
                          ),
                          Text(
                            "Rp. 210.000",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: CustomColor.mainColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/icons/add_circle_white.png"),
                    ),
                    Text(
                      "Add Bagage",
                      style: TextStyle(
                        color: CustomColor.whiteTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
