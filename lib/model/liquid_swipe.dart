import 'package:flutter/material.dart';
import 'package:thiranuitest/constants/color_constants.dart';
import 'package:thiranuitest/widgets/button_custom_widget.dart';
import 'package:thiranuitest/widgets/text_custom_widgets.dart';
import '../screens/bookingScreen/booking_screen.dart';

class GlobalContextService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

class ItemData {
  final Color color;
  final Widget? button;
  final String headLine;
  final String? text;
  final String image;
  final BuildContext? context;

  ItemData({
    required this.color,
    required this.headLine,
    required this.image,
    this.button,
    this.text,
    this.context,
  });
}

List<ItemData> data = [
  ItemData(
      color: Colors.teal.shade900,
      headLine: "The Journey \nOf thousand miles \nBegin with a Single step",
      image: "assets/images/glob.jpg"),
  ItemData(
      color: Colors.blueGrey.shade700,
      headLine: "Zero Convenience \nFee",
      image: "assets/images/fello.jpg",
      text: "Now book your flight tickets \nwith best deals from \nFlewnSa"),
  ItemData(
      color: Colors.brown.shade700,
      button: CustomButton(
        color: Colors.amber.shade900,
        pressed: () {
          Navigator.pushReplacement(
              GlobalContextService.navigatorKey.currentContext!,
              MaterialPageRoute(builder: (context) => const BookingScreen()));
        },
        width: 200,
        height: 55,
        textstyle: TextCustomStyle(
          textData: "Get Tickets",
          textSize: 20,
          textColor: whiteColor,
        ),
      ),
      headLine: "Find And Book\nA Great Experience",
      image: "assets/images/bb.jpg",
      text: "Going forward after a pandemic that \nDevasated the online industry")
];
