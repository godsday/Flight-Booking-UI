import 'package:flutter/material.dart';
import 'package:thiranuitest/screens/checkoutScreen/checkout_screen.dart';

import '../../constants/color_constants.dart';
import '../../widgets/text_custom_widgets.dart';

class BottomPriceContainer extends StatelessWidget {
  const BottomPriceContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0,right: 18),
        child: ListView.separated(
            shrinkWrap: true,
            itemCount: 5,
            separatorBuilder: (context, index) =>const SizedBox(
                  height: 30,
                ),
            itemBuilder: (context, index) {
              return Container(
                width: 350,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: whiteColor,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Stack(
                        children: [
                          Container(
                            width: 330,
                            height: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: const DecorationImage(
                                    image: AssetImage("assets/images/flight.webp"),
                                    fit: BoxFit.cover)),
                          ),
                          
                          Positioned(
                            top: 15,
                            left: 15,
                            child: Container(
                              alignment: Alignment.center,
                              width: 55,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                              ),
                              child: Text("\$150",style: TextStyle(  fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: whiteColor),),
                              // TextCustomStyle(
                              //   textData: "\$150",
                              //   textSize: 18.0,
                              //   textWeight: FontWeight.bold,
                              //   textColor: whiteColor,
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          TextCustomStyle(
                              textData: "Flight Yogyakarta",
                              textSize: 18.0,
                              textWeight: FontWeight.bold),
                          TextCustomStyle(
                            textData: "HJB - JKM",
                            textSize: 18.0,
                            textWeight: FontWeight.bold,
                            textColor: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.update,
                                color: Colors.blue,
                              ),
                              TextCustomStyle(
                                  textData: "10 AM - 12 PM",
                                  textSize: 14.0,
                                  textWeight: FontWeight.bold,
                                  textColor: Colors.grey),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CheckoutScreen()));
                            },
                            child: Row(
                              children: [
                                TextCustomStyle(
                                  textData: "Book Bow",
                                  textSize: 17.0,
                                  textWeight: FontWeight.bold,
                                  textColor: Colors.amber.shade700,
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  color: Colors.amber.shade700,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
           }),
      ),
    );
  }
}
