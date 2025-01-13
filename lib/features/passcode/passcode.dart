import 'package:flight_booking_app/core/arrow_back_black.dart';
import 'package:flight_booking_app/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Passcode extends StatelessWidget {
  const Passcode({super.key});

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
            const SizedBox(height: 56),
            const Text(
              "Passcode",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            const Text(
              "Enter Your Passcode to Proceed the Payment",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            const Text(
              "Forgot passcode?",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.mainColor),
            ),
            const SizedBox(height: 16),
            const Pinput(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              length: 6,
              keyboardType: TextInputType.numberWithOptions(),
              defaultPinTheme: PinTheme(
                width: 57,
                height: 43,
                decoration: BoxDecoration(
                  color: CustomColor.lightGrey,
                ),
              ),
            ),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: CustomColor.mainColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "Enter",
                  style: TextStyle(
                    color: CustomColor.whiteTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
