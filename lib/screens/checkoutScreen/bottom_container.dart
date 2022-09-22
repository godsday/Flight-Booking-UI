import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import '../../widgets/textCustom_widgets.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 5.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                height: height / 5.5,
                width: width / 4,
                child: Image.network(
                  "https://1000logos.net/wp-content/uploads/2020/03/Emirates-Logo-768x480.png",
                  scale: 1,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextCustomStyle(
                  textData: "Departure",
                  textSize: 15.0,
                  textWeight: FontWeight.normal,
                  textColor: Colors.grey,
                ),
                TextCustomStyle(
                  textData: "12:30 Am",
                  textSize: 22.0,
                  textWeight: FontWeight.bold,
                  textColor: Colors.blue.shade300,
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextCustomStyle(
                  textData: "Estimate",
                  textSize: 15.0,
                  textWeight: FontWeight.normal,
                  textColor: Colors.grey,
                ),
                const TextCustomStyle(
                  textData: "03:00 Am",
                  textSize: 22.0,
                  textWeight: FontWeight.bold,
                  textColor: Colors.green,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextCustomStyle(
                  textData: "Arrive",
                  textSize: 15.0,
                  textWeight: FontWeight.normal,
                  textColor: Colors.grey,
                ),
                TextCustomStyle(
                  textData: "01:00 Am",
                  textSize: 22.0,
                  textWeight: FontWeight.bold,
                  textColor: blackColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextCustomStyle(
                  textData: "Price",
                  textSize: 15.0,
                  textWeight: FontWeight.normal,
                  textColor: Colors.grey,
                ),
                TextCustomStyle(
                  textData: "\$450",
                  textSize: 22.0,
                  textWeight: FontWeight.bold,
                  textColor: Colors.amber.shade700,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
