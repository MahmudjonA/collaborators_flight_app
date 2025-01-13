import 'package:flight_booking_app/core/constants/color.dart';
import 'package:flutter/material.dart';

class ToggleSwitch extends StatefulWidget {
  const ToggleSwitch({super.key});

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },
        activeColor: CustomColor.mainColor,
      ),
    );
  }
}
