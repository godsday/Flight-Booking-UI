import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import '../../widgets/text_custom_widgets.dart';

class MiddleContainer extends StatelessWidget {
  const MiddleContainer({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height / 2.6,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: height / 4,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/Emirates.jpg"),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                top: 30,
                left: 30,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: blackColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 30,
                  width: 55,
                  child: Text("\$150",style: TextStyle(  fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: whiteColor),),
                ),
              ),
            ],
          ),
          Container(
            height: height / 8,
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TextCustomStyle(
                          textData: "Flight Yogyakarata",
                          textSize: 20.0,
                          textWeight: FontWeight.bold),
                      TextCustomStyle(
                        textData: "HJB - JKM",
                        textSize: 20.0,
                        textWeight: FontWeight.bold,
                        textColor: Colors.grey,
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.update,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          TextCustomStyle(
                              textData: "10:00 AM-12:00 PM",
                              textSize: 18.0,
                              textWeight: FontWeight.normal,
                              textColor: Colors.grey)
                        ],
                      ),
                      Row(
                        children: [
                          TextCustomStyle(
                              textData: "Details",
                              textSize: 18.0,
                              textWeight: FontWeight.normal,
                              textColor: Colors.amber.shade700),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.amber.shade700,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
