import 'package:flight_booking_app/core/constants/color.dart';
import 'package:flight_booking_app/core/route/rout_names.dart';
import 'package:flight_booking_app/features/account/widgets/setting_container.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isLocationEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.backgroundWhiteColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      backgroundColor: CustomColor.backgroundWhiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Setting",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Custom text color
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "General",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black, // Subheading color
                ),
              ),
              const SizedBox(height: 20),
              SettingContainer(
                text: 'Language',
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.languagePage);
                },
              ),
              SettingContainer(
                text: 'Notification Settings',
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.notificationOPage);
                },
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Switch(
                    value: _isLocationEnabled,
                    onChanged: (bool value) {
                      setState(() {
                        _isLocationEnabled = value;
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
              const Text(
                "Account & Security",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SettingContainer(
                text: 'Email and Mobile Number',
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteNames.phoneNumberEmail,
                  );
                },
              ),
              SettingContainer(
                text: 'Security Settings',
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteNames.securitySettings,
                  );
                },
              ),
              SettingContainer(
                text: 'Delete Account',
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteNames.deleteAccount,
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text(
                "Other",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SettingContainer(
                text: 'Privacy Policy',
                onTap: () {},
              ),
              SettingContainer(
                text: 'Terms and Conditions',
                onTap: () {},
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    "Version",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Text("v4.87.2")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
