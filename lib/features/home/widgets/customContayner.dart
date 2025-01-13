import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';

class Customcontayner extends StatelessWidget {
  final String info;
  final IconData icon;
  const Customcontayner({super.key, required this.info, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, top: 10),
      child: Container(
        padding: const EdgeInsets.only(right: 20, left: 20),
        height: 50,
        decoration: const BoxDecoration(
          color: CustomColor.lightGreyColor,
          borderRadius:
              BorderRadius.all(Radius.circular(20)), // Add border radius
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: CustomColor.mainColor,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(info)
          ],
        ),
      ),
    );
  }
}
