import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thiranuitest/constants/color_constants.dart';
import 'package:thiranuitest/screens/onBoardScreen/onboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoOnboard();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
          height: height,
          width: width,
          child: TextLiquidFill(
              text: 'HiFly',
              waveColor: Colors.amber,
              waveDuration: const Duration(milliseconds: 1000),
              loadDuration: const Duration(seconds: 5),
              loadUntil: 0.6,
              boxBackgroundColor: blackColor,
              textStyle: GoogleFonts.acme(
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
              ),
              boxHeight: height)),
    );
  }

  Future gotoOnboard() async {
    await Future.delayed(const Duration(seconds: 6));
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const OnboardScreen()));
  }
}
