import 'package:flutter/material.dart';

class ArrowBackBlack extends StatelessWidget {
  const ArrowBackBlack({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Image.asset(
        "assets/icons/arrow_left_black.png",
      ),
    );
  }
}