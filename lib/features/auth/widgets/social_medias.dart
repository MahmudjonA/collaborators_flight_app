import 'package:flight_booking_app/core/constants/color.dart';
import 'package:flutter/material.dart';

class SocialMedias extends StatelessWidget {
  const SocialMedias({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 108,
          height: 74,
          decoration: BoxDecoration(
            color: const Color(0xFFF2F3F6),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset("assets/icons/facebook.png",),
        ),
        Container(
          width: 108,
          height: 74,
          decoration: BoxDecoration(
            color: const Color(0xFFF2F3F6),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset("assets/icons/google.png",),
        ),
        Container(
          width: 108,
          height: 74,
          decoration: BoxDecoration(
            color: const Color(0xFFF2F3F6),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset("assets/icons/apple.png",),
        ),
      ],
    );
  }
}
