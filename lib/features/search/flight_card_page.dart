import 'package:flight_booking_app/core/arrow_back.dart';
import 'package:flight_booking_app/core/constants/color.dart';
import 'package:flight_booking_app/features/search/widgets/flight_card.dart';
import 'package:flutter/material.dart';

class FlightCardPage extends StatelessWidget {
  const FlightCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: const ArrowBack(),
        title: const Text(
          "Search Flights",
          style: TextStyle(
            color: CustomColor.whiteTextColor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center ,
          children: [
            SizedBox(height: 60),
            FlightCard(),
            SizedBox(height: 24),
            FlightCard(),
            SizedBox(height: 24),
            FlightCard(),
          ],
        ),
      ),
    );
  }
}
