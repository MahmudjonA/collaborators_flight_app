import 'package:flight_booking_app/core/constants/color.dart';
import 'package:flight_booking_app/core/route/rout_names.dart';
import 'package:flutter/material.dart';

class PaymentSuccessful extends StatelessWidget {
  const PaymentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/icons/order_success.png"),
            ),
            const SizedBox(height: 75),
            const Text(
              'Order confirmed',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: CustomColor.whiteTextColor,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Thank you for your order. You will receive email confirmation shortly.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: CustomColor.whiteTextColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 41),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteNames.bottom_nav_bar);
              },
              child: Container(
                width: double.infinity,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: CustomColor.whiteTextColor,
                    borderRadius: BorderRadius.circular(8)),
                child: const Text(
                  "See Details",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
