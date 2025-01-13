import 'package:flutter/material.dart';

import '../../core/constants/color.dart';

class SetPin extends StatelessWidget {
  const SetPin({super.key});

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
    );
  }
}
