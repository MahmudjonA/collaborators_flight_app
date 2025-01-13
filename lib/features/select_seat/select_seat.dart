import 'package:flight_booking_app/core/arrow_back_black.dart';
import 'package:flight_booking_app/core/constants/color.dart';
import 'package:flutter/material.dart';

class SelectSeat extends StatefulWidget {
  const SelectSeat({super.key});

  @override
  State<SelectSeat> createState() => _SelectSeatState();
}

class _SelectSeatState extends State<SelectSeat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.whiteTextColor,
      appBar: AppBar(
        backgroundColor: CustomColor.whiteTextColor,
        leading: const ArrowBackBlack(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Passenger Info",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 18),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wed, OCT 26 2022",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: CustomColor.greyColor),
                      ),
                      Text(
                        "New York, USA",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "(LGA)",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: CustomColor.greyColor),
                      ),
                    ],
                  ),
                  Image(
                    image: AssetImage("assets/icons/plane.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "9:37 PM",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: CustomColor.greyColor),
                      ),
                      Text(
                        "Danang, VIE",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "(DAD)",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: CustomColor.greyColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 384,
              decoration: BoxDecoration(
                color: CustomColor.lightGrey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: SizedBox(
                  child: Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("B")),
                                    Expanded(child: Text("C")),
                                    Expanded(child: Text("D")),
                                    Expanded(child: Text("E")),
                                    Expanded(child: Text("F")),
                                    Expanded(child: Text("G")),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                    Expanded(child: Text("A")),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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

class OutlinedSeat extends StatefulWidget {
  const OutlinedSeat({super.key});

  @override
  State<OutlinedSeat> createState() => _OutlinedSeatState();
}

class _OutlinedSeatState extends State<OutlinedSeat> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Container(
        width: 38,
        height: 32,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(0, 102, 255, 0.2),
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );
  }
}


class ChooseSeat extends StatelessWidget {
  const ChooseSeat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 32,
      decoration: BoxDecoration(
        color: CustomColor.mainColor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: const Image(image: AssetImage("assets/icons/check.png")),
    );
  }
}

