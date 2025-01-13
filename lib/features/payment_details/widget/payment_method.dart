import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String _selectedPaymentMethod = 'MasterCard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Payment Method'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.credit_card, color: Colors.orange),
            title: Text('***8976'),
            subtitle: Text('Get 10\$ Discount'),
            trailing: Radio<String>(
              value: 'MasterCard',
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_balance_wallet, color: Colors.blue),
            title: Text('Paypal'),
            subtitle: Text('Get 10\$ Discount'),
            trailing: Radio<String>(
              value: 'Paypal',
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
