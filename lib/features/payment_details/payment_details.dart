import 'package:flight_booking_app/core/arrow_back_black.dart';
import 'package:flight_booking_app/core/constants/color.dart';
import 'package:flight_booking_app/core/route/rout_names.dart';
import 'package:flutter/material.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  String _selectedPaymentMethod = 'MasterCard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.whiteTextColor,
      appBar: AppBar(
        backgroundColor: CustomColor.whiteTextColor,
        leading: const ArrowBackBlack(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Digital payment method(s)",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Swipe left to set your default method",
              style: TextStyle(fontSize: 14, color: CustomColor.greyColor),
            ),
            SizedBox(height: 32),
            ListTile(
              leading: Image(image: AssetImage("assets/icons/mastercard.png")),
              title: Text('***8976'),
              subtitle: Text('Get 10\$ Discount'),
              trailing: Radio<String>(
                value: 'MasterCard',
                groupValue: _selectedPaymentMethod,
                activeColor: CustomColor.mainColor,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value!;
                  });
                },
              ),
            ),
            const Divider(),
            ListTile(
              leading: Image(image: AssetImage("assets/icons/paypal.png")),
              title: Text('Paypal'),
              subtitle: Text('Get 10\$ Discount'),
              trailing: Radio<String>(
                value: 'Paypal',
                groupValue: _selectedPaymentMethod,
                activeColor: CustomColor.mainColor,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value!;
                  });
                },
              ),
            ),
            SizedBox(height: 32),
            Text(
              "Add methods",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage("assets/icons/credit_card.png"),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Credit or debit card",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Visa, Mastercard, AMEX and JCB",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500, color: CustomColor.greyColor),
                        ),
                        Row(
                          children: [
                            Image(image: AssetImage("assets/icons/success.png"),),
                            SizedBox(width: 8),
                            Text("Get 10\$ Discount",  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: CustomColor.greyColor,),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  "Add",
                  style: TextStyle(
                    color: CustomColor.mainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Divider(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage("assets/icons/refund.png"),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Credit or debit card",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Transferring via ATM, Internet \nBanking & Mobile Banking",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500, color: CustomColor.greyColor),
                        ),
                        Row(
                          children: [
                            Image(image: AssetImage("assets/icons/success.png"),),
                            SizedBox(width: 8),
                            Text("Get 10\$ Discount",  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: CustomColor.greyColor,),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  "Add",
                  style: TextStyle(
                    color: CustomColor.mainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Subtotal",
                          style: TextStyle(
                            fontSize: 14,
                            color: CustomColor.greyColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 2),
                        Image(
                          image: AssetImage("assets/icons/expand_more.png"),
                        ),
                      ],
                    ),
                    Text(
                      "\$132",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RouteNames.passcode);
                  },
                  child: Container(
                    width: 245,
                    height: 48,
                    decoration: BoxDecoration(
                      color: CustomColor.mainColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Proceed The Payment",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: CustomColor.whiteTextColor,
                          ),
                        ),
                        SizedBox(width: 8),
                        Image(
                          image: AssetImage(
                            "assets/icons/check_circle.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
