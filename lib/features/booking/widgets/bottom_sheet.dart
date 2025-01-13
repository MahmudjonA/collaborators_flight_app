import 'package:flight_booking_app/features/booking/widgets/bottom_sheet_add_baggage.dart';
import 'package:flutter/material.dart';

void showDeals(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    builder: (BuildContext context) {
      return const BottomSheetAddBaggage();
    },
  );
}
