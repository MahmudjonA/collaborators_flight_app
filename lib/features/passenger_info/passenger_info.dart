import 'package:flight_booking_app/core/arrow_back.dart';
import 'package:flight_booking_app/core/arrow_back_black.dart';
import 'package:flight_booking_app/core/constants/color.dart';
import 'package:flutter/material.dart';

class PassengerInfo extends StatefulWidget {
  const PassengerInfo({super.key});

  @override
  _PassengerInfoState createState() => _PassengerInfoState();
}

class _PassengerInfoState extends State<PassengerInfo> {
  String? gender = 'Male';
  String countryCode = '+44';
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final idCardNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.whiteTextColor,
      appBar: AppBar(
        leading: const ArrowBackBlack(),
        backgroundColor: CustomColor.whiteTextColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const Text(
              "Passenger Info",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Radio<String>(
                      value: "Male",
                      groupValue: gender,
                      activeColor: CustomColor.mainColor,
                      onChanged: (String? value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                    const Text("Male"), // Label for the radio button
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  children: [
                    Radio<String>(
                      value: "Female",
                      activeColor: CustomColor.mainColor,
                      groupValue: gender,
                      onChanged: (String? value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                    const Text("Female"), // Label for the radio button
                  ],
                ),
              ],
            ),
            TextField(
              controller: fullNameController,
              decoration: const InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            TextField(
              controller: idCardNumberController,
              decoration: const InputDecoration(
                labelText: 'ID Card Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 8),
            const Text(
              "This contact is for e-ticket and refund/rescheduling",
              style: TextStyle(fontSize: 12, color: CustomColor.greyColor),
            ),
            const SizedBox(height: 32),
            TextButton(
              style: ButtonStyle(
                minimumSize: WidgetStateProperty.all(const Size(double.infinity, 55)),
                backgroundColor: WidgetStateProperty.all(CustomColor.mainColor),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
              ),
              onPressed: () {
                // Handle button press
              },
              child: const Text(
                "Save Changes",
                style: TextStyle(
                  color: CustomColor.whiteTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
