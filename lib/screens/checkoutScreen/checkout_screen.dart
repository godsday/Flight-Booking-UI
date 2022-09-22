import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:thiranuitest/constants/color_constants.dart';
import 'package:thiranuitest/screens/checkoutScreen/bottom_container.dart';
import 'package:thiranuitest/widgets/textCustom_widgets.dart';

import 'middle_container.dart';

class CheckoutScreen extends StatelessWidget {
  CheckoutScreen({Key? key}) : super(key: key);

  List paymenticons = [
    "https://mpng.subpng.com/20180802/xri/kisspng-logo-mastercard-vector-graphics-font-visa-mastercard-logo-png-photo-png-arts-5b634298cd58d5.9008352515332317688411.jpg",
    "https://logos-download.com/wp-content/uploads/2016/03/PayPal_Logo_2014-1536x1520.png",
    "https://i.pinimg.com/564x/f6/60/a6/f660a637c5ea8ef2b00218bac3479c82.jpg",
    "https://www.ebuyer.com/blog/wp-content/uploads/2013/11/bitcoin-logo-1000_0.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      appBar: AppBar(
        centerTitle: true,
        leading: BackButton(
          color: blackColor,
        ),
        title: const TextCustomStyle(
          textData: "Checkout",
          textSize: 26.0,
          textWeight: FontWeight.bold,
          textColor: Colors.black,
        ),
        backgroundColor: const Color.fromARGB(255, 239, 239, 239),
        elevation: 0,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              width: width - 20,
              height: height / 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white70,
              ),
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: width / 5,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: whiteColor),

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CachedNetworkImage(
                              imageUrl: paymenticons[index],
                              placeholder: (context, url) => Shimmer.fromColors(
                                  baseColor: Colors.grey,
                                  highlightColor: Colors.white,
                                  child: Container()),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                           
                    
                          ),

                        
                        ),
                      )),
            ),
            const SizedBox(
              height: 20,
            ),
            MiddleContainer(height: height),
            const SizedBox(
              height: 20,
            ),
            BottomContainer(height: height, width: width),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  fixedSize: const Size(330, 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {},
              child: const TextCustomStyle(
                  textData: "Procced",
                  textSize: 18.0,
                  textWeight: FontWeight.bold),
            )
          ],
        ),
      )),
    );
  }
}


