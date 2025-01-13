import 'package:flutter/material.dart';

class CountryPicker extends StatefulWidget {
  @override
  _CountryPickerState createState() => _CountryPickerState();
}

class _CountryPickerState extends State<CountryPicker> {
  String dropdownValue = '+44';

  // Список стран с кодами и флагами (замените на свои данные)
  List<DropdownMenuItem<String>> get dropdownItems {
    return [
      DropdownMenuItem(
        value: '+44',
        child: Row(
          children: [
            Image.asset('assets/flags/uk.png', width: 24),
            SizedBox(width: 8),
            Text('+44'),
          ],
        ),
      ),
      // ... другие элементы списка
    ];
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.grey[300],
      ),
      onChanged: (newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: dropdownItems,
    );
  }
}