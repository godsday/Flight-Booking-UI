import 'package:flutter/material.dart';
import 'package:thiranuitest/screens/bookingScreen/booking_screen.dart';
import 'package:thiranuitest/widgets/buttonCustom_widget.dart';
import 'package:thiranuitest/widgets/textCustom_widgets.dart';

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
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.black,
              Colors.black38,
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
                textData:
                    "Going forward after a pandemic that \n devasated the online industry ",
                textSize: 17.0,
                textWeight: FontWeight.normal,
                textColor: Colors.grey,
              )),
          Positioned(
              top: 245,
              left: 20,
              child: CustomButton(
                text: "Get Tickets",
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
