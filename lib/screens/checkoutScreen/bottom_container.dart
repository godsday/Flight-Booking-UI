import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants/color_constants.dart';
import '../../widgets/text_custom_widgets.dart';

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
                child:CachedNetworkImage(
                              imageUrl:                   "https://1000logos.net/wp-content/uploads/2020/03/Emirates-Logo-768x480.png",

                              placeholder: (context, url) => Shimmer.fromColors(
                                  baseColor: Colors.grey.shade300,
                                  highlightColor: Colors.white38,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
color: Colors.grey.shade100,
borderRadius: BorderRadius.circular(10)
                                    ),
                                    
                                  )),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                 ),
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
                  textColor: Colors.teal.shade900,
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
                 TextCustomStyle(
                  textData: "06:00 Am",
                  textSize: 22.0,
                  textWeight: FontWeight.bold,
                  textColor: Colors.blue.shade900,
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
                  textData: "05:00 Am",
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
               
                Text("\$450",style: TextStyle(  fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber.shade900))
              ],
            )
          ],
        ),
      ),
    );
  }
}
