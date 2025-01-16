import 'package:flight_booking_app/core/route/rout_names.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color.dart';

class SecuritySettings extends StatefulWidget {
  const SecuritySettings({super.key});

  @override
  State<SecuritySettings> createState() => _SecuritySettingsState();
}
class _SecuritySettingsState extends State<SecuritySettings> {
  String? _selectedOption = "Double Verification";
  bool _isDeviceTrusted = false;
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: CustomColor.backgroundWhiteColor,
          title: const Text('Set as Trusted Device?'),
          content: const Text('Do you want to set this device as trusted?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Confirm'),
              onPressed: () {
                setState(() {
                  _isDeviceTrusted = true;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundWhiteColor,
      appBar: AppBar(
        backgroundColor: CustomColor.backgroundWhiteColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Container(
              height: 80,
              width: double.infinity,
              color: CustomColor.spaceColor,
              padding: const EdgeInsets.only(left: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Security Settings",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Credit Card",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text(
                        "Double Verification",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      Radio(
                        value: "Double Verification",
                        groupValue: _selectedOption,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedOption = value;
                          });
                        },
                        activeColor: CustomColor.mainColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Enter CVV & OTP code for more secure payment verification.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: CustomColor.lightGreyColor,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Text(
                        "Single Verification",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      Radio(
                        value: "Single Verification",
                        groupValue: _selectedOption,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedOption = value;
                          });
                        },
                        activeColor: CustomColor.mainColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Enter CVV & OTP code for a swift & hassle-free payment verification.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Container(
              height: 30,
              width: double.infinity,
              color: CustomColor.spaceColor,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Device",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text(
                        "Set Device as Trusted",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      Switch(
                        value: _isDeviceTrusted,
                        onChanged: (bool value) {
                          if (value) {
                            _showDialog(context);
                          } else {
                            setState(() {
                              _isDeviceTrusted = false;
                            });
                          }
                        },
                        activeColor: CustomColor.whiteTextColor,
                        activeTrackColor: CustomColor.mainColor,
                        inactiveTrackColor: Colors.grey,
                        inactiveThumbColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Activate to set a PIN and manage device connectivity.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              width: double.infinity,
              color: CustomColor.spaceColor,
            ),
            GestureDetector(
              onTap: (){Navigator.pushNamed(context, RouteNames.setPin);},
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PIN",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          "Set PIN",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: CustomColor.lightGreyColor,
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Set a 6-digit verification PIN to secure your account's activities.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
