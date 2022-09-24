import 'package:flutter/material.dart';
import 'package:thiranuitest/constants/color_constants.dart';
import 'package:thiranuitest/screens/bookingScreen/booking_screen.dart';
import 'package:thiranuitest/widgets/button_custom_widget.dart';
import 'package:thiranuitest/widgets/text_custom_widgets.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bb.jpg"),
                    fit: BoxFit.cover)),
          ),
          Container(
            width: width,
            height: height,
            decoration:  BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.teal.shade900,
              //  Colors.indigo.shade800,
              Colors.black54,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),

          // const Positioned(
          //   bottom:20,
          //   left: 40,
          //   child: Image(image: AssetImage("assets/images/trvel 1.png"))),
          const Positioned(
              top: 45,
              left: 20,
              child: TextCustomStyle(
                textData: "Find And Book\nA Great Experience",
                textSize: 33.0,
                textWeight: FontWeight.bold,
                textColor: Colors.white,
              )),
          const Positioned(
              top: 145,
              left: 20,
              child: TextCustomStyle(
                textAlign: TextAlign.start,
                textData:
                    "Going forward after a pandemic that \nDevasated the online industry ",
                textSize: 17.0,
                textWeight: FontWeight.normal,
                textColor: Colors.grey,
              )),
          Positioned(
              top: 245,
              left: 20,
              child: CustomButton(textstyle: TextCustomStyle(textData: "Get Tickets",textColor: blackColor,textSize: 19,textWeight: FontWeight.bold),
              
                pressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BookingScreen()));
                },
                width: 140,
                height: 50,
                color: Colors.orange,
              ))
        ],
      ),
    );
  }
}
