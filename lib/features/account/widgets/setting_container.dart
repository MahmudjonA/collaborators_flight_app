import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';

class SettingContainer extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const SettingContainer({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
            Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: CustomColor.lightGreyColor,
            ),
          ],
        ),
      ),
    );
  }
}
