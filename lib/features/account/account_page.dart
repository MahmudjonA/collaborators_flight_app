import 'package:flight_booking_app/core/constants/color.dart';
import 'package:flight_booking_app/core/route/rout_names.dart';
import 'package:flight_booking_app/features/account/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  bool _isSwitched = false; // State for the toggle switch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              height: 260,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: CustomColor.mainColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "My Profile",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/profile_img.png",
                          height: 80,
                          width: 80,
                        ),
                        const SizedBox(width: 15),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jos Creative",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "josphamdes@gmail.com",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "+1 654 785 4462",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit_calendar_outlined,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                children: [
                  CustomContainer(
                    iconData_1: Icons.navigation_outlined,
                    text: "My Order",
                    iconData_2: Icons.arrow_forward_ios_outlined,
                    onTap: () {
                      // Navigator.pop(context)
                    },
                  ),
                  GestureDetector(
                    onTap: () {},
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
                      child: const Row(
                        children: [
                          Icon(
                            Icons.percent,
                            color: CustomColor.mainColor,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "My Voucher",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomContainer(
                    iconData_1: Icons.payment,
                    text: "Payment Methods",
                    iconData_2: Icons.arrow_forward_ios_outlined,
                    onTap: () {},
                  ),
                  CustomContainer(
                    iconData_1: Icons.person_add_alt_outlined,
                    text: "Invite Friends",
                    iconData_2: Icons.arrow_forward_ios_outlined,
                    onTap: () {},
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      height: 70,
                      width: double.infinity,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.qr_code_scanner_outlined,
                            color: CustomColor.mainColor,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Quick Login",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Switch(
                            value: _isSwitched,
                            onChanged: (bool value) {
                              setState(() {
                                _isSwitched = value;
                              });
                            },
                            activeColor: CustomColor.whiteTextColor,
                            activeTrackColor: CustomColor.mainColor,
                            inactiveTrackColor: Colors.grey,
                            inactiveThumbColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 25,
              width: double.infinity,
              color: CustomColor.spaceColor,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
              ),
              child: Column(
                children: [
                  CustomContainer(
                    iconData_1: Icons.question_mark_rounded,
                    text: "My Order",
                    iconData_2: Icons.arrow_forward_ios_outlined,
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomContainer(
                    iconData_1: Icons.settings,
                    text: "Settings",
                    iconData_2: Icons.arrow_forward_ios_outlined,
                    onTap: () {
                      Navigator.pushNamed(context, RouteNames.settingPage);
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 25,
              width: double.infinity,
              color: CustomColor.spaceColor,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
              ),
              child: CustomContainer(
                iconData_1: Icons.login_outlined,
                text: "Log Out",
                iconData_2: Icons.arrow_forward_ios_outlined,
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 25,
              width: double.infinity,
              color: CustomColor.spaceColor,
            ),
          ],
        ),
      ),
    );
  }
}
