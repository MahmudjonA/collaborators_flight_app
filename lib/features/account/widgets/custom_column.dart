import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';

class CustomColumn extends StatefulWidget {
  final String title;
  final String about;

  const CustomColumn({
    super.key,
    required this.about,
    required this.title,
  });

  @override
  State<CustomColumn> createState() => _CustomColumnState();
}

class _CustomColumnState extends State<CustomColumn> {
  bool isEmailEnabled = false;
  bool isPushNotificationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.about,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          widget.title,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const Text(
              "Email",
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Switch(
              value: isEmailEnabled,
              onChanged: (bool value) {
                setState(() {
                  isEmailEnabled = value;
                });
              },
              activeColor: CustomColor.whiteTextColor,
              activeTrackColor: CustomColor.mainColor,
              inactiveTrackColor: Colors.grey,
              inactiveThumbColor: Colors.white,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const Text(
              "Push Notification",
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Switch(
              value: isPushNotificationEnabled,
              onChanged: (bool value) {
                setState(() {
                  isPushNotificationEnabled = value;
                });
              },
              activeColor: CustomColor.whiteTextColor,
              activeTrackColor: CustomColor.mainColor,
              inactiveTrackColor: Colors.grey,
              inactiveThumbColor: Colors.white,
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
