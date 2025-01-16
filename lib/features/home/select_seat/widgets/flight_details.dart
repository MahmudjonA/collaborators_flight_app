import 'package:flight_booking_app/core/constants/color.dart';
import 'package:flutter/material.dart';
class FlightDetails extends StatelessWidget {
  const FlightDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wed, OCT 26 2022',
                style:  TextStyle(
                  color: CustomColor.greyColor,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'New York, USA', // "New York, USA"
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '(LGA)', // "(LGA)"
                style:  TextStyle(
                  color: CustomColor.greyColor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Container(
            padding:
            const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              'assets/images/flight.png',
              width: 102,
              height: 42,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '9:37 PM', // "9:37 PM"
                style: const TextStyle(
                  color:CustomColor.greyColor,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 4),
              Text(
               'Danang, VIE', // "Danang, VIE"
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '(DAD)', // "(DAD)"
                style: const TextStyle(
                  color: CustomColor.greyColor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
