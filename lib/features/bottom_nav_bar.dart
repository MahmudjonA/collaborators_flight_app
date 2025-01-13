import 'package:flight_booking_app/features/account/account_page.dart';
import 'package:flight_booking_app/features/home/homepage.dart';
import 'package:flight_booking_app/features/transaction/transaction_page.dart';
import 'package:flutter/material.dart';

import '../core/constants/color.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> pages = [
    const Homepage(),
    const TransactionPage(),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CustomColor.backgroundWhiteColor,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue, // Selected icon color
        unselectedItemColor: Colors.grey, // Unselected icon color
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
        ),
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItemWidget(
            "Home", // replace with tr("home") if tr() is defined
            Icons.home, // replace with appropriate icon
          ),
          BottomNavigationBarItemWidget(
            "Transaction", // replace with tr("transaction")
            Icons.confirmation_num, // replace with appropriate icon
          ),
          BottomNavigationBarItemWidget(
            "Account", // replace with tr("account")
            Icons.account_circle, // replace with appropriate icon
          ),
        ],
      ),
    );
  }
}

BottomNavigationBarItem BottomNavigationBarItemWidget(
    String label, IconData iconData) {
  return BottomNavigationBarItem(
    label: label,
    icon: Icon(
      iconData,
      size: 24,
    ),
  );
}
