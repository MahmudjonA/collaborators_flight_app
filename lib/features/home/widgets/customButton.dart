import 'package:flight_booking_app/core/route/rout_names.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, RouteNames.flightCardPage);
      },
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: CustomColor.mainColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: const Center(
          child: Text(
            "Search flights",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ),
    );
  }
}
