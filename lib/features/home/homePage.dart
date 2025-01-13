import 'package:flight_booking_app/core/constants/color.dart';
import 'package:flight_booking_app/features/home/widgets/customButton.dart';
import 'package:flight_booking_app/features/home/widgets/customContayner.dart';
import 'package:flight_booking_app/features/home/widgets/date_bottom_sheet_wg.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String? _tripType = "oneway";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/map.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            // Navigator.pop(context); // Handle back navigation
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        const Text(
                          "Search Flights",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            shadows: [
                              Shadow(
                                color: Colors.black,
                                offset: Offset(1, 1),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                        ),
                        const Expanded(
                          child: SizedBox(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const Expanded(
                        child: Text(
                      "Discover \na new world",
                      style: TextStyle(color: Colors.white, fontSize: 60),
                    ))
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)),
                  color: CustomColor.backgroundWhiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          // Radio button for one-way trip
                          Radio<String>(
                            value: "oneway",
                            groupValue: _tripType,
                            onChanged: (String? value) {
                              setState(() {
                                _tripType = value;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text("One-way"),
                          const SizedBox(
                            width: 20,
                          ),
                          // Radio button for round-trip
                          Radio<String>(
                            value: "roundtrip",
                            groupValue: _tripType,
                            onChanged: (String? value) {
                              setState(() {
                                _tripType = value;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text("Round-trip")
                        ],
                      ),
                      const Text("From"),
                      const Customcontayner(
                        info: "New York, USA",
                        icon: Icons.flight_takeoff,
                      ),
                      const Text("To"),
                      const Customcontayner(
                        info: "Da Nang, Vietnam",
                        icon: Icons.flight_land,
                      ),
                      const Text("Departure Date"),
                      GestureDetector(
                        onTap: () {
                          showDealsDate(context);
                        },
                        child: const Customcontayner(
                          info: "August 28, 2021",
                          icon: Icons.calendar_month_outlined,
                        ),
                      ),
                      const Text("Travelers"),
                      const Customcontayner(
                        info: "1 Adult, 1 child, 0 Infant",
                        icon: Icons.calendar_month_outlined,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Custombutton(),
                    ],
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
