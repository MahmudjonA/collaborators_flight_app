import 'package:flight_booking_app/core/route/rout_names.dart';
import 'package:flutter/material.dart';
import '../../core/constants/color.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundWhiteColor,
      appBar: AppBar(
        backgroundColor: CustomColor.backgroundWhiteColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Transaction",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Image.asset("assets/images/bank.png"),
            ),
            const SizedBox(height: 20),
            const Text(
              "Let’s go somewhere",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "After book a trip you can manage orders and \nsee E-ticket here.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: (){Navigator.pushNamed(context, RouteNames.transactionDetails);},
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: CustomColor.mainColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: const Center(
                  child: Text(
                    "Book a trip",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
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
