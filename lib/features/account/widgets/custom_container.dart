import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';

class CustomContainer extends StatelessWidget {
  final IconData iconData_1;
  final String text;
  final IconData iconData_2;
  final VoidCallback onTap; // Added callback for tap event

  const CustomContainer(
      {super.key,
      required this.iconData_1,
      required this.text,
      required this.iconData_2,
      required this.onTap}); // Added onTap parameter

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Trigger the onTap event
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: CustomColor.lightGreyColor,
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          children: [
            Icon(
              iconData_1,
              color: CustomColor.mainColor,
            ),
            const SizedBox(width: 10),
            // Add spacing between icon and text
            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            // Replacing IconButton with a simple Icon
            Icon(
              iconData_2,
              color: CustomColor.lightGreyColor,
            ),
          ],
        ),
      ),
    );
  }
}
