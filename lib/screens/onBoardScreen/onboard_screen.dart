import 'dart:math';

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:thiranuitest/widgets/text_custom_widgets.dart';
import '../../model/liquid_swipe.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int page = 0;
  late LiquidController liquidController;
  late UpdateType updateType;
  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }

  Widget buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((page) - index).abs(),
      ),
    );
    double zoom = 1.0 + (2.0 - 1.0) * selectedness;
    return SizedBox(
      width: 25.0,
      child: Center(
        child: Material(
          color: Colors.white,
          type: MaterialType.circle,
          child: SizedBox(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
          ),
        ),
      ),
    );
  }

  gotobooking(context) async {}

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: LiquidSwipe.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Stack(
          children: <Widget>[
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(data[index].image), fit: BoxFit.cover)),
            ),

            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                data[index].color,
                //  Colors.indigo.shade800,
                Colors.black54,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),

           
            Positioned(
                top: 75,
                left: 20,
                child: TextCustomStyle(
                  spaceheight: 2,
                  textData: data[index].headLine,
                  textSize: 37.0,
                  textWeight: FontWeight.bold,
                  textColor: Colors.white,
                )),
            Positioned(
                top: 235,
                left: 20,
                child: TextCustomStyle(
                  textAlign: TextAlign.start,
                  textData: data[index].text ?? "",
                  textSize: 18.0,
                  textWeight: FontWeight.normal,
                  textColor: Colors.grey,
                )),
            Positioned(
                top: 545,
                right: 20,
                child: data[index].button ?? const SizedBox())
          ],
        );
      },
      positionSlideIcon: 0.8,
      slideIconWidget:
          page != 2 ? const Icon(Icons.arrow_back_ios) : const SizedBox(),
      onPageChangeCallback: pageChangeCallback,
      waveType: WaveType.liquidReveal,
      liquidController: liquidController,
      fullTransitionValue: 880,
      enableSideReveal: true,
      enableLoop: false,
      ignoreUserGestureWhileAnimating: false,
    ));
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }
}
