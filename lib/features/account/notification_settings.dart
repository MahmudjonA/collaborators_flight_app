import 'package:flight_booking_app/features/account/widgets/custom_column.dart';
import 'package:flutter/material.dart';
import '../../core/constants/color.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Notification Settings",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "Push Notification Disabled",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  "To enable notifications, go to",
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Settings",
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const CustomColumn(
              about: 'Activity',
              title:
                  'Secure your account by keeping your log in, register, and OTP activity on track.',
            ),
            const CustomColumn(
              about: 'Special For You',
              title:
                  'You can never have too much of limited-time discount, exclusive offers, tips and info new feature.',
            ),
            const CustomColumn(
              about: 'Reminders',
              title:
                  'Get inportant travel news and info, payment reminders, check-in reminder and more.',
            ),
            const CustomColumn(
              about: 'Membership',
              title: 'You’ll get emails about tiket Elite Rewards and surveys.',
            ),
          ]),
        ),
      ),
    );
  }
}
