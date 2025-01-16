import 'package:flight_booking_app/core/route/rout_names.dart';
import 'package:flutter/material.dart';
import 'package:flight_booking_app/core/constants/color.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, RouteNames.bottom_nav_bar);
      },
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: CustomColor.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minimumSize: const Size(double.infinity, 48),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Sign in",
            style: TextStyle(
              color: CustomColor.whiteTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 8),
          Image.asset("assets/icons/checked_circle.png"),
        ],
      ),
    );
  }
}
