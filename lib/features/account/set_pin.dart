import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../core/constants/color.dart';

class SetPin extends StatelessWidget {
  const SetPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Set Pin",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Enter 6 digits number for your PIN. Make sure the combination is not easy to guess.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: SizedBox(
                width: 350,
                child: Pinput(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  length: 6,
                  keyboardType: const TextInputType.numberWithOptions(),
                  defaultPinTheme: PinTheme(
                    width: 57,
                    height: 43,
                    decoration: BoxDecoration(
                      color: CustomColor.lightGrey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  focusedPinTheme: PinTheme(
                    decoration: BoxDecoration(
                      color: CustomColor.mainColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: CustomColor.mainColor),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
